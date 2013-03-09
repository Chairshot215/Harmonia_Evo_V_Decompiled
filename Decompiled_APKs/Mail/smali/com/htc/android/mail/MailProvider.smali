.class public Lcom/htc/android/mail/MailProvider;
.super Landroid/content/ContentProvider;
.source "MailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailProvider$DatabaseWrapper;,
        Lcom/htc/android/mail/MailProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNTS:I = 0x5

.field private static final ACCOUNT_ID:I = 0x6

.field private static final ACCOUNT_WITH_UNREAD:I = 0x1f5

.field private static final ALLMESSAGES:I = 0x64

.field private static final ALLMESSAGES_COUNT_READ:I = 0x66

.field private static final ALLMESSAGES_COUNT_UNREAD:I = 0x67

.field private static final ALL_UNREAD_MAIL:I = 0x70

.field public static final AccountVerify:Landroid/net/Uri; = null

.field public static final CALL_METHOD_CONTAINS_EXCHANGE:Ljava/lang/String; = "CONTAINS_EXCHANGE"

.field public static final CALL_METHOD_GET_ACCOUNT:Ljava/lang/String; = "GET_ACCOUNT"

.field public static final CALL_METHOD_GET_ACCOUNTS:Ljava/lang/String; = "GET_ACCOUNTS"

.field public static final CALL_METHOD_GET_ACCOUNT_COUNT:Ljava/lang/String; = "GET_ACCOUNT_COUNT"

.field public static final CALL_METHOD_GET_EXCHANGE_LARGEST_PROTOCOL:Ljava/lang/String; = "GET_EXCHANGE_LARGEST_PROTOCOL"

.field private static final COMMAND_DELETEMAIL:I = 0x132

.field private static final COMMAND_DELETEMAIL_ID:I = 0x133

.field private static final COMMAND_MARKSTAR:I = 0x12e

.field private static final COMMAND_MARKSTAR_ID:I = 0x12f

.field private static final COMMAND_MOVEMAIL:I = 0x130

.field private static final COMMAND_MOVEMAIL_ID:I = 0x131

.field private static final COMMAND_READ:I = 0x12c

.field private static final COMMAND_READ_ID:I = 0x12d

.field public static final DATABASE_PEOPLE:Ljava/lang/String; = "people_db"

.field private static final DATABASE_VERSION:I = 0x76

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DECRYPT_ACCOUNT:I = 0x1f6

.field private static final DELETEMESSAGE_ID:I = 0x190

.field private static final EASMAILBOXS:I = 0x18

.field private static final EASMAILBOXS_ID:I = 0x22

.field private static final EASMAILFLAG_ID:I = 0x23

.field private static final EASMESSAGES:I = 0x1

.field private static final EASMESSAGE_ID:I = 0x2

.field private static final EASMESSAGE_IDS:I = 0x31

.field private static final EASPARTS:I = 0x7

.field private static final EASPARTS_ID:I = 0x8

.field private static final EASPARTS_MESSAGE_ID:I = 0x96

.field private static final EASSUMMARIES:I = 0x3

.field private static final EASSUMMARY_ID:I = 0x4

.field private static final EASTRACKING:I = 0x1f

.field private static final EASTRACKING_ID:I = 0x20

.field public static EASsyncSchedulePeakOff:Ljava/lang/String; = null

.field public static EASsyncSchedulePeakOn:Ljava/lang/String; = null

.field private static final EMAIL_FOR_MERGE:I = 0x34

.field private static final EMAIL_HISTORY:I = 0x33

.field public static final EMAIL_HISTORY_FOR_MERGE_DOMAIN_URI:Landroid/net/Uri; = null

.field public static final EMAIL_HISTORY_FOR_MERGE_NOT_DOMAIN_URI:Landroid/net/Uri; = null

.field public static final EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri; = null

.field public static final EMAIL_HISTORY_URI:Landroid/net/Uri; = null

.field private static final GLOBAL_SETTING_MAIL:I = 0x71

.field private static final GROUPB_MESSAGE_IDS:I = 0x35

.field private static final IMESSAGES:I = 0x9

.field private static final IMESSAGE_ID:I = 0xa

.field private static final INFOS:I = 0x14

.field private static final INFO_ID:I = 0x15

.field private static final IPARTS:I = 0xd

.field private static final IPARTS_ID:I = 0xe

.field private static final ISUMMARIES:I = 0xb

.field private static final ISUMMARY_ID:I = 0xc

.field private static final LAST_ACCOUNT_ENTER:I = 0xd0

.field private static final MAILBOXS:I = 0x18

.field private static final MAILBOXS_ID:I = 0x2c

.field private static final MAILFLAG_ID:I = 0x28

.field private static final MEETING_MSG:I = 0xca

.field private static final MESSAGELISTFILTER_ID:I = 0x12

.field private static final MESSAGELISTFILTER_OTHER_ID:I = 0x13

.field private static final MESSAGELIST_ID:I = 0x11

.field private static final MESSAGES:I = 0x1

.field private static final MESSAGESTAGSRELATION:I = 0x2711

.field private static final MESSAGE_ID:I = 0x2

.field private static final MESSAGE_IDS:I = 0x30

.field private static MailApPath:Ljava/lang/String; = null

.field public static final MailFlag:Landroid/net/Uri; = null

.field private static final NOTIFICATION:I = 0x2a

.field private static final NOTIFICATION_ID:I = 0x2b

.field private static final NO_NOTIFY_MESSAGES:I = 0x2d

.field private static final NO_NOTIFY_MESSAGES_ID:I = 0x2e

.field private static final PARTS:I = 0x7

.field private static final PARTS_ID:I = 0x8

.field private static final PARTS_MESSAGE_ID:I = 0x37

.field private static final PARTS_MSGID:I = 0x32

.field private static final PENDINGREQUESTS:I = 0x26

.field private static final PEOPLE_DATA:I = 0x259

.field private static final PEOPLE_GROUPS:I = 0x258

.field private static final PEOPLE_MESSAGE_IDS:I = 0x36

.field private static final PROVIDERS:I = 0xf

.field private static final PROVIDERSETTINGS:I = 0x24

.field private static final PROVIDERSETTING_ID:I = 0x25

.field private static final PROVIDER_ID:I = 0x10

.field private static final QUERY_FILTER_I_MESSAGE:Ljava/lang/String; = "SELECT imessages._id AS _id,imessages._tag AS _tag,imessages._account AS _account,imessages._to AS _to,imessages._from AS _from,imessages._fromEmail AS _fromEmail,imessages._subject AS _subject,imessages._date AS _date,imessages._read AS _read,imessages._del AS _del FROM imessages WHERE "

.field private static final QUERY_FILTER_MESSAGE:Ljava/lang/String; = "SELECT messages._id AS _id,messages._tag AS _tag,messages._account AS _account,messages._to AS _to,messages._from AS _from,messages._fromEmail AS _fromEmail,messages._subject AS _subject,messages._date AS _date,messages._read AS _read,messages._del AS _del FROM messages WHERE "

.field private static final SEARCH_SVR_MAIL:I = 0xcb

.field private static final SEARCH_SVR_MAIL_ID:I = 0xcc

.field private static final SEARCH_SVR_PARTS:I = 0xcd

.field private static final SEARCH_SVR_PARTS_MESSAGE_ID:I = 0xcf

.field private static final SEARCH_SVR_PART_ID:I = 0xce

.field private static final SET_MESSAGE_READ_ID:I = 0x191

.field private static final SET_MESSAGE_UNREAD_ID:I = 0x192

.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final SQLITECOMMAND:I = 0x69

.field private static final SUGGESTIONS:I = 0x16

.field private static final SUMMARIES:I = 0x3

.field private static final SUMMARIES_CHILDREN_GROUPS_WITH_Mailbox:I = 0x162

.field private static final SUMMARIES_CHILDREN_THREAD_WITH_Mailbox:I = 0x160

.field private static final SUMMARIES_PARENT_GROUPS_WITH_Mailbox:I = 0x161

.field private static final SUMMARIES_PARENT_THREAD_WITH_Mailbox:I = 0x15f

.field private static final SUMMARIES_WITH_Mailbox:I = 0x15e

.field public static final SUMMARIES_WITH_Mailbox_AllGroupMail:I = 0x170

.field public static final SUMMARIES_WITH_Mailbox_GroupNumCount:I = 0x16f

.field public static final SUMMARIES_WITH_Mailbox_MarkStar:I = 0x16e

.field public static final SUMMARIES_WITH_Mailbox_Unread:I = 0x163

.field private static final SUMMARY_ID:I = 0x4

.field private static final SVRSUMMARIES:I = 0xd1

.field private static final SVRSUMMARIES_ID:I = 0xd2

.field public static final SqliteCommandURI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MailProvider"

.field private static final TAGS:I = 0x2710

.field private static final ULOG_MESSAGE_COUNT:I = 0x2bc

.field private static final VERIFY_ACCOUNT_ID:I = 0xc8

.field public static final accountWithUnread:Landroid/net/Uri; = null

.field public static final allUnreadMail:Landroid/net/Uri; = null

.field public static alwaysBccMyself:Ljava/lang/String; = null

.field public static askBeforeDelete:Ljava/lang/String; = null

.field public static deleteFromServer:Ljava/lang/String; = null

.field public static downloadMessageWhenScroll:Ljava/lang/String; = null

.field public static emailNotifications:Ljava/lang/String; = null

.field public static enableSDsave:Ljava/lang/String; = null

.field public static fetchMailDays:Ljava/lang/String; = null

.field public static fetchMailNum:Ljava/lang/String; = null

.field public static fetchMailType:Ljava/lang/String; = null

.field public static fontSize:Ljava/lang/String; = null

.field public static final glancePreview:Ljava/lang/String; = "_glancePreview"

.field public static final globalSetting:Landroid/net/Uri; = null

.field public static huxFetchMailDays:Ljava/lang/String; = null

.field public static huxFetchMailType:Ljava/lang/String; = null

.field public static huxPeakDays:Ljava/lang/String; = null

.field public static huxPeakTimeEnd:Ljava/lang/String; = null

.field public static huxPeakTimeStart:Ljava/lang/String; = null

.field public static huxSyncSchedulePeakOff:Ljava/lang/String; = null

.field public static huxSyncSchedulePeakOn:Ljava/lang/String; = null

.field public static peakDays:Ljava/lang/String; = null

.field public static peakTimeEnd:Ljava/lang/String; = null

.field public static peakTimeStart:Ljava/lang/String; = null

.field public static poll_frequency_number:Ljava/lang/String; = null

.field public static previewLinesNumber:Ljava/lang/String; = null

.field public static refreshMailWhenOpenFolder:Ljava/lang/String; = null

.field public static replyWithText:Ljava/lang/String; = null

.field public static final sAccountSegmentLowStorage:Ljava/lang/String; = "lowStorage"

.field public static final sAccountsURI:Landroid/net/Uri; = null

.field public static final sAllMessageWithAccountURI:Landroid/net/Uri; = null

.field public static final sBodyPreviewLimitColumns:[Ljava/lang/String; = null

.field private static final sDatabaseName:Ljava/lang/String; = "mail.db"

.field public static final sDecrypAccountsURI:Landroid/net/Uri; = null

.field public static final sDeleteMessage:Landroid/net/Uri; = null

.field public static final sDeletePartColumns:[Ljava/lang/String; = null

.field public static final sEASMailBoxURI:Landroid/net/Uri; = null

.field public static final sEASMessageIdsURI:Landroid/net/Uri; = null

.field public static final sEASMessagesURI:Landroid/net/Uri; = null

.field public static final sEASPartsMessageURI:Landroid/net/Uri; = null

.field public static final sEASPartsURI:Landroid/net/Uri; = null

.field public static final sEASTracking:Landroid/net/Uri; = null

.field public static final sEASaailFlag:Landroid/net/Uri; = null

.field public static final sFilterEmailAddressURI:Landroid/net/Uri; = null

.field public static final sGroupMessageIdsURI:Landroid/net/Uri; = null

.field public static final sInfosURI:Landroid/net/Uri; = null

.field public static final sLimitPartColumns:[Ljava/lang/String; = null

.field public static final sLimitPartColumnsForCompose:[Ljava/lang/String; = null

.field public static final sMailBoxURI:Landroid/net/Uri; = null

.field public static final sMailbodySizeLimit:J = 0xc8000L

.field public static final sMeetingMsgURI:Landroid/net/Uri; = null

.field public static final sMessageIdsURI:Landroid/net/Uri; = null

.field public static final sMessageViewFilterOtherURI:Landroid/net/Uri; = null

.field public static final sMessageViewFilterURI:Landroid/net/Uri; = null

.field public static final sMessageViewURI:Landroid/net/Uri; = null

.field public static final sMessagesTagsRelationURI:Landroid/net/Uri; = null

.field public static final sMessagesURI:Landroid/net/Uri; = null

.field public static final sNoNotifyMessagesURI:Landroid/net/Uri; = null

.field public static final sNotificationURI:Landroid/net/Uri; = null

.field public static final sPartsMessageURI:Landroid/net/Uri; = null

.field public static final sPartsURI:Landroid/net/Uri; = null

.field public static final sPatternMessagesWithMailboxUnread:Ljava/lang/String; = "messages/account/#/mailbox/#/unread/"

.field public static final sPatternSummaryWithMailboxUnread:Ljava/lang/String; = "summary/account/#/mailbox/#/unread/"

.field public static final sPendingRequestURI:Landroid/net/Uri; = null

.field public static final sPeopleDataURI:Landroid/net/Uri; = null

.field public static final sPeopleGroupURI:Landroid/net/Uri; = null

.field public static final sPeopleMessageIdsURI:Landroid/net/Uri; = null

.field public static final sProviderSettingsURI:Landroid/net/Uri; = null

.field public static final sProvidersURI:Landroid/net/Uri; = null

.field public static final sSearchSvrMessagesURI:Landroid/net/Uri; = null

.field public static final sSearchSvrPartsMessageURI:Landroid/net/Uri; = null

.field public static final sSearchSvrPartsURI:Landroid/net/Uri; = null

.field public static final sSetMessageStatus:Landroid/net/Uri; = null

.field public static final sSummariesDeleteMailURI:Landroid/net/Uri; = null

.field public static final sSummariesMarkStarURI:Landroid/net/Uri; = null

.field public static final sSummariesMoveMailURI:Landroid/net/Uri; = null

.field public static final sSummariesReadURI:Landroid/net/Uri; = null

.field public static final sSummariesURI:Landroid/net/Uri; = null

.field public static sSummaryAccountIdx:I = 0x0

.field public static final sSummaryColumns:[Ljava/lang/String; = null

.field public static final sSummaryColumnsForGroups:[Ljava/lang/String; = null

.field public static final sSummaryColumnsForOutbox:[Ljava/lang/String; = null

.field public static final sSummaryColumnsForThread:[Ljava/lang/String; = null

.field public static final sSummaryColumnsForThreadOutbox:[Ljava/lang/String; = null

.field public static sSummaryDownloadtotalsizeIdx:I = 0x0

.field public static final sSummaryFilterAttach:Ljava/lang/String; = "attach"

.field public static final sSummaryFilterDefault:Ljava/lang/String; = "default"

.field public static final sSummaryFilterGroupChildren:Ljava/lang/String; = "groupChildren"

.field public static final sSummaryFilterGroupNumCount:Ljava/lang/String; = "groupNumCount"

.field public static final sSummaryFilterGroupParent:Ljava/lang/String; = "groupParent"

.field public static final sSummaryFilterMarkStar:Ljava/lang/String; = "markStar"

.field public static final sSummaryFilterMeeting:Ljava/lang/String; = "meeting"

.field public static final sSummaryFilterThreadChildren:Ljava/lang/String; = "threadChildren"

.field public static final sSummaryFilterThreadParent:Ljava/lang/String; = "threadParent"

.field public static final sSummaryFilterUnread:Ljava/lang/String; = "unread"

.field public static sSummaryFlagsIdx:I

.field public static sSummaryFromIdx:I

.field public static sSummaryGroupIdx:I

.field public static sSummaryGroupsCountIdx:I

.field public static sSummaryGroupsIdIdx:I

.field public static sSummaryGroupsReadCountIdx:I

.field public static sSummaryGroupsTitleIdx:I

.field public static sSummaryIdIdx:I

.field public static sSummaryImportanceIdx:I

.field public static sSummaryIncAttachmentIdx:I

.field public static sSummaryInternaldateIdx:I

.field public static sSummaryMailActIdx:I

.field public static sSummaryMailboxIdIdx:I

.field public static sSummaryMessageClassIntIdx:I

.field public static sSummaryMessagesizeIdx:I

.field public static sSummaryOutAccountIdx:I

.field public static sSummaryOutCcIdx:I

.field public static sSummaryOutCcString:I

.field public static sSummaryOutDownloadtotalsizeIdx:I

.field public static sSummaryOutFlagsIdx:I

.field public static sSummaryOutGroupIdx:I

.field public static sSummaryOutIdIdx:I

.field public static sSummaryOutImportanceIdx:I

.field public static sSummaryOutIncAttachmentIdx:I

.field public static sSummaryOutInternaldateIdx:I

.field public static sSummaryOutMailActIdx:I

.field public static sSummaryOutMailboxIdIdx:I

.field public static sSummaryOutMessageClassIntIdx:I

.field public static sSummaryOutMessagesizeIdx:I

.field public static sSummaryOutPreviewIdx:I

.field public static sSummaryOutReadIdx:I

.field public static sSummaryOutSubjectIdx:I

.field public static sSummaryOutSubjtypeIdx:I

.field public static sSummaryOutThreadAccountIdx:I

.field public static sSummaryOutThreadCcIdx:I

.field public static sSummaryOutThreadCcString:I

.field public static sSummaryOutThreadDownloadtotalsizeIdx:I

.field public static sSummaryOutThreadFlagsIdx:I

.field public static sSummaryOutThreadGroupIdx:I

.field public static sSummaryOutThreadIdIdx:I

.field public static sSummaryOutThreadImportanceIdx:I

.field public static sSummaryOutThreadIncAttachmentIdx:I

.field public static sSummaryOutThreadInternaldateIdx:I

.field public static sSummaryOutThreadMailActIdx:I

.field public static sSummaryOutThreadMailboxIdIdx:I

.field public static sSummaryOutThreadMessageClassIntIdx:I

.field public static sSummaryOutThreadMessagesizeIdx:I

.field public static sSummaryOutThreadMsgIdIdx:I

.field public static sSummaryOutThreadPreviewIdx:I

.field public static sSummaryOutThreadReadIdx:I

.field public static sSummaryOutThreadSubjectIdx:I

.field public static sSummaryOutThreadSubjtypeIdx:I

.field public static sSummaryOutThreadToIdx:I

.field public static sSummaryOutThreadToStringIdx:I

.field public static sSummaryOutToIdx:I

.field public static sSummaryOutToStringIdx:I

.field public static sSummaryPreviewIdx:I

.field public static sSummaryReadIdx:I

.field public static sSummarySubjectIdx:I

.field public static sSummarySubjtypeIdx:I

.field public static sSummaryThreadAccountIdx:I

.field public static sSummaryThreadDownloadtotalsizeIdx:I

.field public static sSummaryThreadFlagsIdx:I

.field public static sSummaryThreadFromIdx:I

.field public static sSummaryThreadGroupIdx:I

.field public static sSummaryThreadIdIdx:I

.field public static sSummaryThreadImportanceIdx:I

.field public static sSummaryThreadIncAttachmentIdx:I

.field public static sSummaryThreadInternaldateIdx:I

.field public static sSummaryThreadMailActIdx:I

.field public static sSummaryThreadMailboxIdIdx:I

.field public static sSummaryThreadMessageClassIntIdx:I

.field public static sSummaryThreadMessagesizeIdx:I

.field public static sSummaryThreadMsgIdIdx:I

.field public static sSummaryThreadPreviewIdx:I

.field public static sSummaryThreadReadIdx:I

.field public static sSummaryThreadSubjectIdx:I

.field public static sSummaryThreadSubjtypeIdx:I

.field public static final sSvrSummariesURI:Landroid/net/Uri;

.field public static final sTagsURI:Landroid/net/Uri;

.field static sTheOne:Lcom/htc/android/mail/MailProvider;

.field public static final sURLMatcher:Landroid/content/UriMatcher;

.field public static signature:Ljava/lang/String;

.field public static sizelimit:Ljava/lang/String;

.field public static smtpauth:Ljava/lang/String;

.field public static sound:Ljava/lang/String;

.field public static syncSchedulePeakOff:Ljava/lang/String;

.field public static syncSchedulePeakOn:Ljava/lang/String;

.field public static syncWithServer:Ljava/lang/String;

.field public static useSignature:Ljava/lang/String;

.field public static vibrate:Ljava/lang/String;


# instance fields
.field private ToastMsg_StorageFull:Landroid/widget/Toast;

.field private final mAfterCommitRunnable:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mDbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

.field private final mNotifiedUriSets:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 125
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 126
    const-string v0, "content://mail/searchSvrMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 127
    const-string v0, "content://mail/meetingMsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMeetingMsgURI:Landroid/net/Uri;

    .line 128
    const-string v0, "content://mail/noNotifyMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    .line 129
    const-string v0, "content://mail/summary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    .line 131
    const-string v0, "content://mail/cmd/read"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesReadURI:Landroid/net/Uri;

    .line 132
    const-string v0, "content://mail/cmd/markStar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesMarkStarURI:Landroid/net/Uri;

    .line 133
    const-string v0, "content://mail/cmd/moveMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    .line 134
    const-string v0, "content://mail/cmd/deleteMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    .line 135
    const-string v0, "content://mail/searchSvrMessages/svrsummay"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSvrSummariesURI:Landroid/net/Uri;

    .line 136
    const-string v0, "content://mail/notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    .line 137
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    .line 138
    const-string v0, "content://mail/decryptAccounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sDecrypAccountsURI:Landroid/net/Uri;

    .line 139
    const-string v0, "content://mail/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    .line 140
    const-string v0, "content://mail/providersettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    .line 141
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 142
    const-string v0, "content://mail/searchSvrParts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 143
    const-string v0, "content://mail/infos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sInfosURI:Landroid/net/Uri;

    .line 144
    const-string v0, "content://mail/partsMsgId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sPartsMessageURI:Landroid/net/Uri;

    .line 146
    const-string v0, "content://mail/messageview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMessageViewURI:Landroid/net/Uri;

    .line 147
    const-string v0, "content://mail/messageviewfilter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMessageViewFilterURI:Landroid/net/Uri;

    .line 148
    const-string v0, "content://mail/messageviewfilterother"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMessageViewFilterOtherURI:Landroid/net/Uri;

    .line 149
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    .line 150
    const-string v0, "content://mail/pending_requests"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    .line 152
    const-string v0, "content://mail/deleteMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sDeleteMessage:Landroid/net/Uri;

    .line 153
    const-string v0, "content://mail/setMessageStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSetMessageStatus:Landroid/net/Uri;

    .line 155
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASMessagesURI:Landroid/net/Uri;

    .line 156
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASPartsURI:Landroid/net/Uri;

    .line 157
    const-string v0, "content://mail/easTracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    .line 158
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASMailBoxURI:Landroid/net/Uri;

    .line 159
    const-string v0, "content://mail/easpartsMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASPartsMessageURI:Landroid/net/Uri;

    .line 160
    const-string v0, "content://mail/searchSvrPartsMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsMessageURI:Landroid/net/Uri;

    .line 163
    const-string v0, "content://mail/easMailFlag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASaailFlag:Landroid/net/Uri;

    .line 165
    const-string v0, "content://mail/MailFlag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->MailFlag:Landroid/net/Uri;

    .line 166
    const-string v0, "content://mail/AccountVerify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->AccountVerify:Landroid/net/Uri;

    .line 169
    const-string v0, "content://mail/SqliteCommand"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->SqliteCommandURI:Landroid/net/Uri;

    .line 173
    const-string v0, "content://mail/messageIds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    .line 174
    const-string v0, "content://mail/groupMessageIds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sGroupMessageIdsURI:Landroid/net/Uri;

    .line 175
    const-string v0, "content://mail/peopleMessageIds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sPeopleMessageIdsURI:Landroid/net/Uri;

    .line 176
    const-string v0, "content://mail/easMessageIds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sEASMessageIdsURI:Landroid/net/Uri;

    .line 179
    const-string v0, "content://mail/allUnreadMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->allUnreadMail:Landroid/net/Uri;

    .line 180
    const-string v0, "content://mail/globalSetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->globalSetting:Landroid/net/Uri;

    .line 181
    const-string v0, "content://mail/accountWithUnread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    .line 184
    const-string v0, "content://mail/allmessages_with_account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    .line 186
    const-string v0, "content://mail/email_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    .line 187
    const-string v0, "content://mail/emailformerge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri;

    .line 188
    sget-object v0, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "style"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_DOMAIN_URI:Landroid/net/Uri;

    .line 189
    sget-object v0, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "style"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_NOT_DOMAIN_URI:Landroid/net/Uri;

    .line 192
    const-string v0, "content://mail/people_groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sPeopleGroupURI:Landroid/net/Uri;

    .line 193
    const-string v0, "content://mail/people_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sPeopleDataURI:Landroid/net/Uri;

    .line 196
    const-string v0, "content://com.android.contacts/contacts/filter_emailaddress"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sFilterEmailAddressURI:Landroid/net/Uri;

    .line 199
    const-string v0, "content://mail/tags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    .line 200
    const-string v0, "content://mail/messages_tags_relation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesTagsRelationURI:Landroid/net/Uri;

    .line 206
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "ifnull(_from, _fromEmail) as sender"

    aput-object v1, v0, v3

    const-string v1, "substr(_subject, 0, 85) as _subject"

    aput-object v1, v0, v4

    const-string v1, "_mailboxId"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_internaldate"

    aput-object v2, v0, v1

    const-string v1, "_flags"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_downloadtotalsize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_group"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_preview"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    .line 226
    sput v6, Lcom/htc/android/mail/MailProvider;->sSummaryIdIdx:I

    .line 227
    sput v3, Lcom/htc/android/mail/MailProvider;->sSummaryFromIdx:I

    .line 228
    sput v4, Lcom/htc/android/mail/MailProvider;->sSummarySubjectIdx:I

    .line 229
    sput v5, Lcom/htc/android/mail/MailProvider;->sSummaryMailboxIdIdx:I

    .line 230
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryInternaldateIdx:I

    .line 231
    sput v7, Lcom/htc/android/mail/MailProvider;->sSummaryFlagsIdx:I

    .line 232
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryReadIdx:I

    .line 233
    const/4 v0, 0x7

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryDownloadtotalsizeIdx:I

    .line 234
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryMessagesizeIdx:I

    .line 235
    const/16 v0, 0x9

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryAccountIdx:I

    .line 236
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryIncAttachmentIdx:I

    .line 237
    const/16 v0, 0xb

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryGroupIdx:I

    .line 238
    const/16 v0, 0xc

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryMailActIdx:I

    .line 239
    const/16 v0, 0xd

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummarySubjtypeIdx:I

    .line 240
    const/16 v0, 0xe

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryImportanceIdx:I

    .line 241
    const/16 v0, 0xf

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryMessageClassIntIdx:I

    .line 242
    const/16 v0, 0x10

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryPreviewIdx:I

    .line 244
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "substr(_subject, 0, 85) as _subject"

    aput-object v1, v0, v3

    const-string v1, "_mailboxId"

    aput-object v1, v0, v4

    const-string v1, "_internaldate"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_flags"

    aput-object v2, v0, v1

    const-string v1, "_read"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_downloadtotalsize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_group"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_toString"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_cc"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "_ccString"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_preview"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForOutbox:[Ljava/lang/String;

    .line 268
    sput v6, Lcom/htc/android/mail/MailProvider;->sSummaryOutIdIdx:I

    .line 269
    sput v3, Lcom/htc/android/mail/MailProvider;->sSummaryOutSubjectIdx:I

    .line 270
    sput v4, Lcom/htc/android/mail/MailProvider;->sSummaryOutMailboxIdIdx:I

    .line 271
    sput v5, Lcom/htc/android/mail/MailProvider;->sSummaryOutInternaldateIdx:I

    .line 272
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutFlagsIdx:I

    .line 273
    sput v7, Lcom/htc/android/mail/MailProvider;->sSummaryOutReadIdx:I

    .line 274
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutDownloadtotalsizeIdx:I

    .line 275
    const/4 v0, 0x7

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMessagesizeIdx:I

    .line 276
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutAccountIdx:I

    .line 277
    const/16 v0, 0x9

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutIncAttachmentIdx:I

    .line 278
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutGroupIdx:I

    .line 279
    const/16 v0, 0xb

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMailActIdx:I

    .line 280
    const/16 v0, 0xc

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutSubjtypeIdx:I

    .line 281
    const/16 v0, 0xd

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutImportanceIdx:I

    .line 282
    const/16 v0, 0xe

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMessageClassIntIdx:I

    .line 283
    const/16 v0, 0xf

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutToIdx:I

    .line 284
    const/16 v0, 0x10

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutToStringIdx:I

    .line 285
    const/16 v0, 0x11

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutCcIdx:I

    .line 286
    const/16 v0, 0x12

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutCcString:I

    .line 287
    const/16 v0, 0x13

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutPreviewIdx:I

    .line 292
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_groupPseudo as _id"

    aput-object v1, v0, v6

    const-string v1, "_id as _messageId"

    aput-object v1, v0, v3

    const-string v1, "ifnull(_from, _fromEmail) as sender"

    aput-object v1, v0, v4

    const-string v1, "substr(_subject, 0, 85) as _subject"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const-string v1, "_internaldate"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_downloadtotalsize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_group"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_preview"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForThread:[Ljava/lang/String;

    .line 313
    sput v6, Lcom/htc/android/mail/MailProvider;->sSummaryThreadIdIdx:I

    .line 314
    sput v3, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMsgIdIdx:I

    .line 315
    sput v4, Lcom/htc/android/mail/MailProvider;->sSummaryThreadFromIdx:I

    .line 316
    sput v5, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjectIdx:I

    .line 317
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMailboxIdIdx:I

    .line 318
    sput v7, Lcom/htc/android/mail/MailProvider;->sSummaryThreadInternaldateIdx:I

    .line 319
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadFlagsIdx:I

    .line 320
    const/4 v0, 0x7

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadReadIdx:I

    .line 321
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadDownloadtotalsizeIdx:I

    .line 322
    const/16 v0, 0x9

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMessagesizeIdx:I

    .line 323
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadAccountIdx:I

    .line 324
    const/16 v0, 0xb

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadIncAttachmentIdx:I

    .line 325
    const/16 v0, 0xc

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadGroupIdx:I

    .line 326
    const/16 v0, 0xd

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMailActIdx:I

    .line 327
    const/16 v0, 0xe

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjtypeIdx:I

    .line 328
    const/16 v0, 0xf

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadImportanceIdx:I

    .line 329
    const/16 v0, 0x10

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMessageClassIntIdx:I

    .line 330
    const/16 v0, 0x11

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadPreviewIdx:I

    .line 332
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_groupPseudo as _id"

    aput-object v1, v0, v6

    const-string v1, "_id as _messageId"

    aput-object v1, v0, v3

    const-string v1, "substr(_subject, 0, 85) as _subject"

    aput-object v1, v0, v4

    const-string v1, "_mailboxId"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_internaldate"

    aput-object v2, v0, v1

    const-string v1, "_flags"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_downloadtotalsize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_group"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_toString"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "_cc"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_ccString"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "_preview"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForThreadOutbox:[Ljava/lang/String;

    .line 357
    sput v6, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadIdIdx:I

    .line 358
    sput v3, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMsgIdIdx:I

    .line 359
    sput v4, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadSubjectIdx:I

    .line 360
    sput v5, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMailboxIdIdx:I

    .line 361
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadInternaldateIdx:I

    .line 362
    sput v7, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadFlagsIdx:I

    .line 363
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadReadIdx:I

    .line 364
    const/4 v0, 0x7

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadDownloadtotalsizeIdx:I

    .line 365
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMessagesizeIdx:I

    .line 366
    const/16 v0, 0x9

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadAccountIdx:I

    .line 367
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadIncAttachmentIdx:I

    .line 368
    const/16 v0, 0xb

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadGroupIdx:I

    .line 369
    const/16 v0, 0xc

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMailActIdx:I

    .line 370
    const/16 v0, 0xd

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadSubjtypeIdx:I

    .line 371
    const/16 v0, 0xe

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadImportanceIdx:I

    .line 372
    const/16 v0, 0xf

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMessageClassIntIdx:I

    .line 373
    const/16 v0, 0x10

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadToIdx:I

    .line 374
    const/16 v0, 0x11

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadToStringIdx:I

    .line 375
    const/16 v0, 0x12

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadCcIdx:I

    .line 376
    const/16 v0, 0x13

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadCcString:I

    .line 377
    const/16 v0, 0x14

    sput v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadPreviewIdx:I

    .line 485
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "people_db.groups._id as _id"

    aput-object v1, v0, v6

    const-string v1, "people_db.groups.title as title"

    aput-object v1, v0, v3

    const-string v1, "count(messages._id) as count"

    aput-object v1, v0, v4

    const-string v1, "sum(messages._read) as readcount"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForGroups:[Ljava/lang/String;

    .line 492
    sput v6, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsIdIdx:I

    .line 493
    sput v3, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsTitleIdx:I

    .line 494
    sput v4, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsCountIdx:I

    .line 495
    sput v5, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsReadCountIdx:I

    .line 497
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_mimetype"

    aput-object v1, v0, v3

    const-string v1, "_nativeType"

    aput-object v1, v0, v4

    const-string v1, "_filereference"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_contentid"

    aput-object v2, v0, v1

    const-string v1, "_filename"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_filepath"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SUBSTR(_text, 1, 819200) as _text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_meetingMailBody"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_uuid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_cid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_filesize"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_contenttype"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_inline"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_encode"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_index"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_charset"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_message"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sLimitPartColumns:[Ljava/lang/String;

    .line 520
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_mimetype"

    aput-object v1, v0, v3

    const-string v1, "_filereference"

    aput-object v1, v0, v4

    const-string v1, "_filename"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_filepath"

    aput-object v2, v0, v1

    const-string v1, "SUBSTR(_text, 1, 819200) as _text"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_cid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_filesize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_contenttype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sLimitPartColumnsForCompose:[Ljava/lang/String;

    .line 533
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_filename"

    aput-object v1, v0, v3

    const-string v1, "_mimetype"

    aput-object v1, v0, v4

    const-string v1, "_filepath"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    .line 541
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_message"

    aput-object v1, v0, v6

    const-string v1, "SUBSTR(_text, 1, 2000) as _text"

    aput-object v1, v0, v3

    const-string v1, "_mimetype"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sBodyPreviewLimitColumns:[Ljava/lang/String;

    .line 560
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 710
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 711
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "meetingMsg"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 712
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "noNotifyMessages"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 713
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 714
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "noNotifyMessages/#"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 715
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 717
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 718
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 720
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/default/"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 721
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/default/"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 723
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/unread/"

    const/16 v3, 0x163

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 724
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/unread/"

    const/16 v3, 0x163

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 726
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/markStar/"

    const/16 v3, 0x16e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 727
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/markStar/"

    const/16 v3, 0x16e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 729
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/meeting/"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 730
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/meeting/"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 732
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/attach/"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 733
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/attach/"

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 735
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/threadParent/"

    const/16 v3, 0x15f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 736
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/threadParent/"

    const/16 v3, 0x15f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 738
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/threadChildren/"

    const/16 v3, 0x160

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/threadChildren/"

    const/16 v3, 0x160

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 741
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/groupsParent/"

    const/16 v3, 0x161

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 742
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/groupsParent/"

    const/16 v3, 0x161

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 744
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/groupsChildren"

    const/16 v3, 0x162

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 745
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages/account/#/mailbox/#/groupsChildren"

    const/16 v3, 0x162

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 747
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "summary/account/#/mailbox/#/groupNumCount"

    const/16 v3, 0x16f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 749
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/read/"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 750
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/read/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 752
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/markStar/"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 753
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/markStar/#"

    const/16 v3, 0x12f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 755
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/moveMail"

    const/16 v3, 0x130

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 756
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/moveMail/#"

    const/16 v3, 0x131

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 758
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/deleteMail"

    const/16 v3, 0x132

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 759
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "cmd/deleteMail/#"

    const/16 v3, 0x133

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 765
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 766
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "accounts/lowStorage"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 767
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "accounts/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 768
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "decryptAccounts"

    const/16 v3, 0x1f6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 769
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "parts"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 772
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "partsMsgId/#"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 773
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "parts/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 774
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "parts/#/message/#"

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 777
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "providers/"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 778
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "providers/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 780
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messageview"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 781
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messageviewfilter"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 782
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messageviewfilterother"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 788
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "suggestion/search_suggest_query"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 790
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "mailboxs"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 791
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "mailboxs/#"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 793
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "easpartsMessage/#"

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 801
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "easTracking"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 802
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "easTracking/#"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 805
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "partsMessage/#"

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 807
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "easMailFlag/#"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 808
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "deleteMessage/#"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 809
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "setMessageStatus/read/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 810
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "setMessageStatus/unread/#"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 812
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "providersettings/"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 813
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "providersettings/#"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 815
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "pending_requests"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 817
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "notification"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 818
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "notification/#"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 822
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "allmessages_with_account"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 823
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "allmessagesCountRead"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 824
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "allmessagesCountUnread"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 827
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "MailFlag/#"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 828
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "AccountVerify/#"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 831
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "SqliteCommand"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 832
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "allUnreadMail"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 833
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "globalSetting"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 835
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "accountWithUnread"

    const/16 v3, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 837
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messageIds"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 838
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "groupMessageIds"

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 839
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "peopleMessageIds"

    const/16 v3, 0x36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 840
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "easMessageIds"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 842
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "email_history"

    const/16 v3, 0x33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 843
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "emailformerge"

    const/16 v3, 0x34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 844
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrMessages"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 845
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrMessages/#"

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 846
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrParts"

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 847
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrParts/#"

    const/16 v3, 0xce

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 848
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrPartsMessage/#"

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 849
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrMessages/svrsummay"

    const/16 v3, 0xd1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 850
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "searchSvrMessages/svrsummay/#"

    const/16 v3, 0xd2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 853
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "people_groups"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 854
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "people_data"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 856
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "ulog_mailcount"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 858
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "tags"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 859
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mail"

    const-string v2, "messages_tags_relation"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 866
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    .line 867
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    .line 868
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    .line 869
    const-string v0, ""

    sput-object v0, Lcom/htc/android/mail/MailProvider;->signature:Ljava/lang/String;

    .line 870
    const-string v0, "4"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    .line 871
    const-string v0, "3"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    .line 872
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->fetchMailType:Ljava/lang/String;

    .line 873
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    .line 874
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    .line 875
    const-string v0, "2"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->fontSize:Ljava/lang/String;

    .line 876
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    .line 877
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    .line 878
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    .line 879
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    .line 880
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    .line 881
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    .line 882
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    .line 883
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->smtpauth:Ljava/lang/String;

    .line 884
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    .line 885
    const-string v0, "2"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->previewLinesNumber:Ljava/lang/String;

    .line 886
    const-string v0, "31"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    .line 887
    const-string v0, "3"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    .line 888
    const-string v0, "5"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    .line 889
    const-string v0, "4"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->EASsyncSchedulePeakOn:Ljava/lang/String;

    .line 890
    const-string v0, "6"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->EASsyncSchedulePeakOff:Ljava/lang/String;

    .line 891
    const-string v0, "480"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    .line 892
    const-string v0, "1200"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    .line 893
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->downloadMessageWhenScroll:Ljava/lang/String;

    .line 894
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->syncWithServer:Ljava/lang/String;

    .line 896
    const-string v0, "1"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxFetchMailType:Ljava/lang/String;

    .line 897
    const-string v0, "4"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxFetchMailDays:Ljava/lang/String;

    .line 898
    const-string v0, "9"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxSyncSchedulePeakOn:Ljava/lang/String;

    .line 899
    const-string v0, "7"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxSyncSchedulePeakOff:Ljava/lang/String;

    .line 900
    const-string v0, "127"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxPeakDays:Ljava/lang/String;

    .line 901
    const-string v0, "300"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxPeakTimeStart:Ljava/lang/String;

    .line 902
    const-string v0, "0"

    sput-object v0, Lcom/htc/android/mail/MailProvider;->huxPeakTimeEnd:Ljava/lang/String;

    .line 905
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/MailProvider;->MailApPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/MailProvider;->ToastMsg_StorageFull:Landroid/widget/Toast;

    .line 2977
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 2978
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    .line 2979
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    .line 864
    return-void
.end method

.method public static final IsAccountExisted(Ljava/lang/String;)Z
    .locals 11
    .parameter "where"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 5738
    sget-boolean v1, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "J"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsAccountExisted where >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5742
    .local v0, cp:Landroid/content/IContentProvider;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5743
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5744
    const-string v1, "_total"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 5745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v9

    .line 5756
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 5749
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    .line 5750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move v1, v10

    .line 5752
    goto :goto_0

    .line 5753
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Landroid/os/DeadObjectException;
    move v1, v10

    .line 5754
    goto :goto_0

    .line 5755
    .end local v7           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v8

    .local v8, rex:Landroid/os/RemoteException;
    move v1, v10

    .line 5756
    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    return v0
.end method

.method private addSlash(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "value"
    .parameter "key"

    .prologue
    .line 6242
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6243
    .local v0, tmp:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6244
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6245
    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6247
    :cond_0
    return-object p1
.end method

.method public static addSyncAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 16
    .parameter "context"
    .parameter "accountId"
    .parameter "name"
    .parameter "password"
    .parameter "protocol"
    .parameter "provider"
    .parameter "checkFreq"
    .parameter "refreshWhenOpenValue"

    .prologue
    .line 6813
    const/4 v2, 0x4

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 6860
    :cond_0
    :goto_0
    return-void

    .line 6814
    :cond_1
    const-string v3, "com.htc.android.mail"

    .line 6815
    .local v3, type:Ljava/lang/String;
    const-string v12, "mail"

    .line 6817
    .local v12, authority:Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 6819
    .local v13, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 6820
    const-string v2, "Yahoo"

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6821
    sget-object v3, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .line 6831
    :goto_1
    const-string v2, "AccountAction"

    const-string v4, "com.htc.android.mail.huxservice.SyncSettings"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6834
    :cond_2
    const-string v2, "no_new_task"

    const-string v4, "true"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6835
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, p3

    invoke-direct {v11, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6836
    .local v11, account:Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v11, v0, v13}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 6837
    invoke-static {v11, v12}, Landroid/content/ContentResolver;->registerSetSyncAfterOnAccountUpdate(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 6840
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6841
    .local v14, intent:Landroid/content/Intent;
    const-string v15, "com.htc.android.mail"

    .line 6842
    .local v15, pkgName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6843
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.easclient.PeakTimeSetting"

    invoke-direct {v2, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6844
    const/4 v6, -0x1

    .line 6845
    .local v6, syncInterval:I
    if-nez p7, :cond_7

    .line 6846
    const/4 v6, -0x1

    .line 6853
    :goto_2
    if-lez p8, :cond_9

    .line 6854
    const/4 v5, 0x1

    .line 6858
    .local v5, refreshWhenOpen:I
    :goto_3
    const/4 v7, -0x1

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.mail"

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 6822
    .end local v5           #refreshWhenOpen:I
    .end local v6           #syncInterval:I
    .end local v11           #account:Landroid/accounts/Account;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #pkgName:Ljava/lang/String;
    :cond_3
    const-string v2, "AOL"

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6823
    sget-object v3, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_1

    .line 6824
    :cond_4
    const-string v2, "MSN"

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6825
    sget-object v3, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto/16 :goto_1

    .line 6826
    :cond_5
    const-string v2, "Google"

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6827
    sget-object v3, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto/16 :goto_1

    .line 6829
    :cond_6
    const-string v3, "com.htc.android.mail"

    goto/16 :goto_1

    .line 6847
    .restart local v6       #syncInterval:I
    .restart local v11       #account:Landroid/accounts/Account;
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #pkgName:Ljava/lang/String;
    :cond_7
    const/16 v2, 0x9

    move/from16 v0, p7

    if-ne v0, v2, :cond_8

    .line 6848
    const/4 v6, -0x2

    goto :goto_2

    .line 6850
    :cond_8
    invoke-static/range {p7 .. p7}, Lcom/htc/android/mail/account/AccountBinder;->getPollValue(I)I

    move-result v2

    mul-int/lit8 v6, v2, 0x3c

    goto :goto_2

    .line 6856
    :cond_9
    const/4 v5, 0x0

    .restart local v5       #refreshWhenOpen:I
    goto :goto_3
.end method

.method public static final createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 4481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS accounts (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_name TEXT NOT NULL,_emailaddress TEXT NOT NULL,_username TEXT NOT NULL,_outusername TEXT NOT NULL,_password TEXT NOT NULL,_outpassword TEXT NOT NULL,_desc TEXT NOT NULL,_protocol INTEGER DEFAULT 0,_inserver TEXT,_inport INTEGER,_outserver TEXT,_outport INTEGER,_useSSLin INTEGER DEFAULT 1,_useSSLout INTEGER DEFAULT 1,_easDomain TEXT,_easSvrProtocol TEXT DEFAULT \'Unknown\',_easHeartBeatInternal INTEGER DEFAULT -1,_easDeviceID TEXT,_easDeviceType TEXT,_useSignature INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sizelimit INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_poll_frequency_number INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailType INTEGER DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailNum INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailDays INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_previewLinesNumber INTEGER DEFAULT 2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fontSize INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_deleteFromServer INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_alwaysBccMyself INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_askBeforeDelete INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_enableSDsave INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smtpauth INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->smtpauth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_del INTEGER DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_signature TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_nextfetchtime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lastupdatetime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_emailnotifications INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_provider TEXT DEFAULT \'\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_providerid INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_replyWithText INTEGER  DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_refreshMailWhenOpenFolder INTEGER  DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_defaultaccount INTEGER  DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_defaultfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfolder TEXT DEFAULT \'Trash\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfoldertext TEXT DEFAULT \'Trash\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfolder TEXT DEFAULT \'Sent\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfoldertext TEXT DEFAULT \'Sent\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfolder TEXT DEFAULT \'Drafts\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfoldertext TEXT DEFAULT \'Drafts\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_outfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_flags INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sortby INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_initalscale INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peakdays INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peaktimestart INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peaktimeend INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peakonfrequency INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peakofffrequency INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AccountVerify INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_contactGroup TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_colorIdx INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_downloadMessageWhenScroll INTEGER DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_syncWithServer INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_providerGroup TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4559
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_accounts BEFORE DELETE ON accounts BEGIN DELETE FROM mailboxs WHERE old._id = _account; DELETE FROM pending_requests WHERE old._id = _accountId; DELETE FROM notification WHERE old._id = _accountid; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4570
    return-void
.end method

.method public static final createAccountTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 4312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS accounts (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_name TEXT NOT NULL,_emailaddress TEXT NOT NULL,_username TEXT NOT NULL,_outusername TEXT NOT NULL,_password TEXT NOT NULL,_outpassword TEXT NOT NULL,_desc TEXT NOT NULL,_protocol INTEGER DEFAULT 0,_inserver TEXT,_inport INTEGER,_outserver TEXT,_outport INTEGER,_useSSLin INTEGER DEFAULT 1,_useSSLout INTEGER DEFAULT 1,_easDomain TEXT,_easSvrProtocol TEXT DEFAULT \'Unknown\',_easHeartBeatInternal INTEGER DEFAULT -1,_easDeviceID TEXT,_easDeviceType TEXT,_useSignature INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sizelimit INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_poll_frequency_number INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailType INTEGER DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailNum INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailDays INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_previewLinesNumber INTEGER DEFAULT 2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fontSize INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_deleteFromServer INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_alwaysBccMyself INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_askBeforeDelete INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_enableSDsave INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smtpauth INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->smtpauth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_del INTEGER DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_signature TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_nextfetchtime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lastupdatetime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_emailnotifications INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_provider TEXT DEFAULT \'\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_providerid INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_replyWithText INTEGER  DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_refreshMailWhenOpenFolder INTEGER  DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_defaultaccount INTEGER  DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_defaultfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfolder TEXT DEFAULT \'Trash\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfoldertext TEXT DEFAULT \'Trash\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfolder TEXT DEFAULT \'Sent\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfoldertext TEXT DEFAULT \'Sent\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfolder TEXT DEFAULT \'Drafts\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfoldertext TEXT DEFAULT \'Drafts\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_outfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_flags INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sortby INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_initalscale INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AccountVerify INTEGER DEFAULT 0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4379
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_accounts BEFORE DELETE ON accounts BEGIN DELETE FROM mailboxs WHERE old._id = _account; DELETE FROM pending_requests WHERE old._id = _accountId; DELETE FROM notification WHERE old._id = _accountid; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4390
    return-void
.end method

.method public static final createAccountTable_v101(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 4394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS accounts (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_name TEXT NOT NULL,_emailaddress TEXT NOT NULL,_username TEXT NOT NULL,_outusername TEXT NOT NULL,_password TEXT NOT NULL,_outpassword TEXT NOT NULL,_desc TEXT NOT NULL,_protocol INTEGER DEFAULT 0,_inserver TEXT,_inport INTEGER,_outserver TEXT,_outport INTEGER,_useSSLin INTEGER DEFAULT 1,_useSSLout INTEGER DEFAULT 1,_easDomain TEXT,_easSvrProtocol TEXT DEFAULT \'Unknown\',_easHeartBeatInternal INTEGER DEFAULT -1,_easDeviceID TEXT,_easDeviceType TEXT,_useSignature INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sizelimit INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_poll_frequency_number INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailType INTEGER DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailNum INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fetchMailDays INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_previewLinesNumber INTEGER DEFAULT 2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fontSize INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_deleteFromServer INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_alwaysBccMyself INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_askBeforeDelete INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_enableSDsave INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smtpauth INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->smtpauth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_del INTEGER DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_signature TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_nextfetchtime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lastupdatetime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_emailnotifications INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_provider TEXT DEFAULT \'\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_providerid INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_replyWithText INTEGER  DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_refreshMailWhenOpenFolder INTEGER  DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_defaultaccount INTEGER  DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_defaultfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfolder TEXT DEFAULT \'Trash\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfoldertext TEXT DEFAULT \'Trash\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_trashfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfolder TEXT DEFAULT \'Sent\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfoldertext TEXT DEFAULT \'Sent\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sentfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfolder TEXT DEFAULT \'Drafts\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfoldertext TEXT DEFAULT \'Drafts\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_draftfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_outfolderId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_flags INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sortby INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_initalscale INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peakdays INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peaktimestart INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peaktimeend INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peakonfrequency INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_peakofffrequency INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AccountVerify INTEGER DEFAULT 0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4466
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_accounts BEFORE DELETE ON accounts BEGIN DELETE FROM mailboxs WHERE old._id = _account; DELETE FROM pending_requests WHERE old._id = _accountId; DELETE FROM notification WHERE old._id = _accountid; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4477
    return-void
.end method

.method public static final createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4305
    const-string v0, "CREATE TABLE globalSetting (_id INTEGER NOT NULL PRIMARY KEY,_glancePreview INTEGER DEFAULT 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4309
    return-void
.end method

.method public static final createMailBoxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4645
    const-string v0, "CREATE TABLE IF NOT EXISTS mailboxs (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_undecodename TEXT DEFAULT \'\',_decodename TEXT DEFAULT \'\',_shortname TEXT DEFAULT \'\',_serverfolder INTEGER DEFAULT 1,_defaultfolder INTEGER DEFAULT 0,_account INTEGER NOT NULL,_movegroup INTEGER DEFAULT 1,_showsender INTEGER DEFAULT 1,_lastuid TEXT DEFAULT \'\',_existsize INTEGER DEFAULT 0,_noselect INTEGER DEFAULT 0,_haschild INTEGER DEFAULT 0,_serverid INTEGER DEFAULT 0,_parentid INTEGER DEFAULT 0,_displayname TEXT,_type INTEGER,_synckey TEXT DEFAULT 0,_enablesync INTEGER DEFAULT 1,_default_sync INTEGER DEFAULT 0,_uidvalidity TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4673
    const-string v0, "CREATE INDEX IF NOT EXISTS IDX_mailboxs_accountId ON mailboxs (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4675
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_mailboxs2 BEFORE DELETE ON mailboxs BEGIN DELETE FROM messages WHERE old._id = _mailboxId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4680
    return-void
.end method

.method public static final createMailBoxTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4573
    const-string v0, "CREATE TABLE IF NOT EXISTS mailboxs (_id INTEGER NOT NULL PRIMARY KEY,_undecodename TEXT DEFAULT \'\',_decodename TEXT DEFAULT \'\',_shortname TEXT DEFAULT \'\',_serverfolder INTEGER DEFAULT 1,_defaultfolder INTEGER DEFAULT 0,_account INTEGER NOT NULL,_movegroup INTEGER DEFAULT 1,_showsender INTEGER DEFAULT 1,_lastuid TEXT DEFAULT \'\',_existsize INTEGER DEFAULT 0,_noselect INTEGER DEFAULT 0,_haschild INTEGER DEFAULT 0,_serverid INTEGER DEFAULT 0,_parentid INTEGER DEFAULT 0,_displayname TEXT,_type INTEGER,_synckey TEXT DEFAULT 0,_enablesync INTEGER DEFAULT 1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4598
    const-string v0, "CREATE INDEX IF NOT EXISTS IDX_mailboxs_accountId ON mailboxs (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4600
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_mailboxs2 BEFORE DELETE ON mailboxs BEGIN DELETE FROM messages WHERE old._id = _mailboxId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4605
    return-void
.end method

.method public static final createMailBoxTable_v114(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4608
    const-string v0, "CREATE TABLE IF NOT EXISTS mailboxs (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_undecodename TEXT DEFAULT \'\',_decodename TEXT DEFAULT \'\',_shortname TEXT DEFAULT \'\',_serverfolder INTEGER DEFAULT 1,_defaultfolder INTEGER DEFAULT 0,_account INTEGER NOT NULL,_movegroup INTEGER DEFAULT 1,_showsender INTEGER DEFAULT 1,_lastuid TEXT DEFAULT \'\',_existsize INTEGER DEFAULT 0,_noselect INTEGER DEFAULT 0,_haschild INTEGER DEFAULT 0,_serverid INTEGER DEFAULT 0,_parentid INTEGER DEFAULT 0,_displayname TEXT,_type INTEGER,_synckey TEXT DEFAULT 0,_enablesync INTEGER DEFAULT 1,_default_sync INTEGER DEFAULT 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4635
    const-string v0, "CREATE INDEX IF NOT EXISTS IDX_mailboxs_accountId ON mailboxs (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4637
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_mailboxs2 BEFORE DELETE ON mailboxs BEGIN DELETE FROM messages WHERE old._id = _mailboxId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4642
    return-void
.end method

.method public static final createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4821
    const-string v0, "CREATE TABLE messages (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_uid TEXT,_from TEXT,_fromEmail TEXT COLLATE NOCASE,_subject TEXT DEFAULT \'\',_to TEXT,_cc TEXT,_bcc TEXT,_threadindex TEXT,_threadtopic TEXT,_headers TEXT,_date INTEGER,_internaldate INTEGER DEFAULT 0,_preview TEXT,_flags INTEGER,_read INTEGER DEFAULT 0,_del INTEGER DEFAULT -1,_readsize INTEGER DEFAULT 0,_readtotalsize INTEGER DEFAULT 0,_downloadtotalsize INTEGER DEFAULT 0,_messagesize INTEGER DEFAULT 0,_incAttachment INTEGER DEFAULT 0,_account INTEGER NOT NULL,_mailbox TEXT,_mailboxId INTEGER,_mailAct INTEGER DEFAULT 0,_toString TEXT,_ccString TEXT,_bccString TEXT,_displayMode INTEGER DEFAULT 0,_text TEXT,_htmlText TEXT,_messageid TEXT,_references TEXT,_group TEXT,_groupPseudo INTEGER DEFAULT 0,_charset TEXT,_subjtype TEXT DEFAULT \'\',_sync INTEGER DEFAULT 1,_done INTEGER DEFAULT 1,_local INTEGER DEFAULT 0,_tag INTEGER DEFAULT 0,_importance INTEGER DEFAULT 1,_notaddTrack INTEGER,_messageClass TEXT,_messageClassInt INTEGER DEFAULT 0,_smartCommand INTEGER DEFAULT 0,_refMsgId INTEGER DEFAULT 0,_allDayEvent TEXT,_startTime TEXT,_dtstamp TEXT,_endTime TEXT,_instanceType TEXT,_location TEXT,_organizer TEXT,_recurrenceId TEXT,_reminder TEXT,_responseRequested TEXT,_sensitivity TEXT,_IntdBusyStatus TEXT,_timezone TEXT,_globalObjId TEXT,_category TEXT,_recurrence_type TEXT DEFAULT \'-1\',_recurrence_occurrences TEXT,_recurrence_interval TEXT,_recurrence_dayofweek TEXT,_recurrence_dayofmonth TEXT,_recurrence_weekofmonth TEXT,_recurrence_monthofyear TEXT,_recurrence_until TEXT,_synckey TEXT,_replyTo TEXT,_retryCount INTEGER DEFAULT 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4902
    const-string v0, "CREATE INDEX IDX_messages_accountId ON messages (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4903
    const-string v0, "CREATE INDEX IDX_messages_uid ON messages (_uid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4904
    const-string v0, "CREATE INDEX IDX_messages_mailboxId ON messages (_mailboxId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4905
    const-string v0, "CREATE INDEX IDX_messages_del ON messages (_del);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4906
    const-string v0, "CREATE INDEX IDX_messages_internaldate ON messages (_internaldate);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4907
    const-string v0, "CREATE INDEX IDX_messages_messageId ON messages (_messageid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4908
    const-string v0, "CREATE INDEX IDX_messages_read on messages (_read);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4909
    const-string v0, "CREATE INDEX IDX_messages_globalObjId on messages (_globalObjId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4910
    const-string v0, "CREATE INDEX IDX_messages_fromEmail on messages (_fromEmail);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4912
    const-string v0, "CREATE INDEX IDX_messages_group on messages (_group);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4915
    const-string v0, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM parts WHERE old._id = _message; DELETE FROM pending_requests WHERE old._id = _messageId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4925
    const-string v0, "CREATE TRIGGER insert_message AFTER INSERT ON messages BEGIN DELETE FROM pending_requests WHERE NEW._uid = _uid AND _request = \'6\'; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4933
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_tags_from_messageId BEFORE DELETE ON messages BEGIN DELETE FROM messages_tags_relation WHERE old._id = _messageId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4940
    return-void
.end method

.method public static final createMessageTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4709
    const-string v0, "CREATE TABLE messages (_id INTEGER NOT NULL PRIMARY KEY,_uid TEXT,_from TEXT,_fromEmail TEXT COLLATE NOCASE,_subject TEXT DEFAULT \'\',_to TEXT,_cc TEXT,_bcc TEXT,_threadindex TEXT,_threadtopic TEXT,_headers TEXT,_date INTEGER,_internaldate INTEGER DEFAULT 0,_preview TEXT,_flags INTEGER,_read INTEGER DEFAULT 0,_del INTEGER DEFAULT -1,_readsize INTEGER DEFAULT 0,_readtotalsize INTEGER DEFAULT 0,_downloadtotalsize INTEGER DEFAULT 0,_messagesize INTEGER DEFAULT 0,_incAttachment INTEGER DEFAULT 0,_account INTEGER NOT NULL,_mailbox TEXT,_mailboxId INTEGER,_mailAct INTEGER DEFAULT 0,_toString TEXT,_ccString TEXT,_bccString TEXT,_displayMode INTEGER DEFAULT 0,_text TEXT,_htmlText TEXT,_messageid TEXT,_references TEXT,_group TEXT,_groupPseudo INTEGER DEFAULT 0,_charset TEXT,_subjtype TEXT DEFAULT \'\',_sync INTEGER DEFAULT 1,_done INTEGER DEFAULT 1,_local INTEGER DEFAULT 0,_tag INTEGER DEFAULT 0,_importance INTEGER DEFAULT 1,_notaddTrack INTEGER,_messageClass TEXT,_messageClassInt INTEGER DEFAULT 0,_smartCommand INTEGER DEFAULT 0,_refMsgId INTEGER DEFAULT 0,_allDayEvent TEXT,_startTime TEXT,_dtstamp TEXT,_endTime TEXT,_instanceType TEXT,_location TEXT,_organizer TEXT,_recurrenceId TEXT,_reminder TEXT,_responseRequested TEXT,_sensitivity TEXT,_IntdBusyStatus TEXT,_timezone TEXT,_globalObjId TEXT,_category TEXT,_recurrence_type TEXT DEFAULT \'-1\',_recurrence_occurrences TEXT,_recurrence_interval TEXT,_recurrence_dayofweek TEXT,_recurrence_dayofmonth TEXT,_recurrence_weekofmonth TEXT,_recurrence_monthofyear TEXT,_recurrence_until TEXT,_synckey TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4788
    const-string v0, "CREATE INDEX IDX_messages_accountId ON messages (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4789
    const-string v0, "CREATE INDEX IDX_messages_uid ON messages (_uid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4790
    const-string v0, "CREATE INDEX IDX_messages_mailboxId ON messages (_mailboxId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4791
    const-string v0, "CREATE INDEX IDX_messages_del ON messages (_del);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4792
    const-string v0, "CREATE INDEX IDX_messages_internaldate ON messages (_internaldate);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4793
    const-string v0, "CREATE INDEX IDX_messages_messageId ON messages (_messageid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4794
    const-string v0, "CREATE INDEX IDX_messages_read on messages (_read);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4795
    const-string v0, "CREATE INDEX IDX_messages_globalObjId on messages (_globalObjId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4796
    const-string v0, "CREATE INDEX IDX_messages_fromEmail on messages (_fromEmail);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4798
    const-string v0, "CREATE INDEX IDX_messages_group on messages (_group);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4801
    const-string v0, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM parts WHERE old._id = _message; DELETE FROM pending_requests WHERE old._id = _messageId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4811
    const-string v0, "CREATE TRIGGER insert_message AFTER INSERT ON messages BEGIN DELETE FROM pending_requests WHERE NEW._uid = _uid AND _request = \'6\'; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4818
    return-void
.end method

.method public static final createMessageTable_v112(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4969
    const-string v0, "CREATE TABLE messages (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_uid TEXT,_from TEXT,_fromEmail TEXT COLLATE NOCASE,_subject TEXT DEFAULT \'\',_to TEXT,_cc TEXT,_bcc TEXT,_threadindex TEXT,_threadtopic TEXT,_headers TEXT,_date INTEGER,_internaldate INTEGER DEFAULT 0,_preview TEXT,_flags INTEGER,_read INTEGER DEFAULT 0,_del INTEGER DEFAULT -1,_readsize INTEGER DEFAULT 0,_readtotalsize INTEGER DEFAULT 0,_downloadtotalsize INTEGER DEFAULT 0,_messagesize INTEGER DEFAULT 0,_incAttachment INTEGER DEFAULT 0,_account INTEGER NOT NULL,_mailbox TEXT,_mailboxId INTEGER,_mailAct INTEGER DEFAULT 0,_toString TEXT,_ccString TEXT,_bccString TEXT,_displayMode INTEGER DEFAULT 0,_text TEXT,_htmlText TEXT,_messageid TEXT,_references TEXT,_group TEXT,_groupPseudo INTEGER DEFAULT 0,_charset TEXT,_subjtype TEXT DEFAULT \'\',_sync INTEGER DEFAULT 1,_done INTEGER DEFAULT 1,_local INTEGER DEFAULT 0,_tag INTEGER DEFAULT 0,_importance INTEGER DEFAULT 1,_notaddTrack INTEGER,_messageClass TEXT,_messageClassInt INTEGER DEFAULT 0,_smartCommand INTEGER DEFAULT 0,_refMsgId INTEGER DEFAULT 0,_allDayEvent TEXT,_startTime TEXT,_dtstamp TEXT,_endTime TEXT,_instanceType TEXT,_location TEXT,_organizer TEXT,_recurrenceId TEXT,_reminder TEXT,_responseRequested TEXT,_sensitivity TEXT,_IntdBusyStatus TEXT,_timezone TEXT,_globalObjId TEXT,_category TEXT,_recurrence_type TEXT DEFAULT \'-1\',_recurrence_occurrences TEXT,_recurrence_interval TEXT,_recurrence_dayofweek TEXT,_recurrence_dayofmonth TEXT,_recurrence_weekofmonth TEXT,_recurrence_monthofyear TEXT,_recurrence_until TEXT,_synckey TEXT,_replyTo TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5049
    const-string v0, "CREATE INDEX IDX_messages_accountId ON messages (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5050
    const-string v0, "CREATE INDEX IDX_messages_uid ON messages (_uid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5051
    const-string v0, "CREATE INDEX IDX_messages_mailboxId ON messages (_mailboxId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5052
    const-string v0, "CREATE INDEX IDX_messages_del ON messages (_del);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5053
    const-string v0, "CREATE INDEX IDX_messages_internaldate ON messages (_internaldate);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5054
    const-string v0, "CREATE INDEX IDX_messages_messageId ON messages (_messageid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5055
    const-string v0, "CREATE INDEX IDX_messages_read on messages (_read);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5056
    const-string v0, "CREATE INDEX IDX_messages_globalObjId on messages (_globalObjId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5057
    const-string v0, "CREATE INDEX IDX_messages_fromEmail on messages (_fromEmail);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5059
    const-string v0, "CREATE INDEX IDX_messages_group on messages (_group);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5062
    const-string v0, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM parts WHERE old._id = _message; DELETE FROM pending_requests WHERE old._id = _messageId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5072
    const-string v0, "CREATE TRIGGER insert_message AFTER INSERT ON messages BEGIN DELETE FROM pending_requests WHERE NEW._uid = _uid AND _request = \'6\'; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5079
    return-void
.end method

.method public static final createMessagesTagsRelationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5482
    const-string v0, "CREATE TABLE IF NOT EXISTS messages_tags_relation (_id INTEGER NOT NULL PRIMARY KEY,_messageId INTEGER NOT NULL,_tagId INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5488
    const-string v0, "CREATE INDEX IDX_messages_tags_relation_messageId on messages_tags_relation (_messageId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5489
    const-string v0, "CREATE INDEX IDX_messages_tags_relation_tagId on messages_tags_relation (_tagId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5490
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS UNIQUE_IDX_messages_tags_relation_message_Id_tagId on messages_tags_relation (_messageId, _tagId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5491
    return-void
.end method

.method public static final createMessagesTagsRelationTable_v117(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5470
    const-string v0, "CREATE TABLE IF NOT EXISTS messages_tags_relation (_id INTEGER NOT NULL PRIMARY KEY,_messageId INTEGER NOT NULL,_tagId INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5476
    const-string v0, "CREATE INDEX IDX_messages_tags_relation_messageId on messages_tags_relation (_messageId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5477
    const-string v0, "CREATE INDEX IDX_messages_tags_relation_tagId on messages_tags_relation (_tagId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5478
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS UNIQUE_IDX_messages_tags_relation_message_Id_tagId on messages_tags_relation (_messageId, _tagId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5479
    return-void
.end method

.method public static final createPartsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5082
    const-string v0, "CREATE TABLE parts (_id INTEGER NOT NULL PRIMARY KEY,_mimetype TEXT NOT NULL,_nativeType TEXT,_filereference TEXT,_contentid TEXT,_filename TEXT DEFAULT \'\',_filepath TEXT,_text TEXT,_meetingMailBody TEXT,_uuid TEXT,_cid TEXT,_filesize INTEGER DEFAULT 0,_contenttype INTEGER DEFAULT 0,_inline INTEGER DEFAULT 0,_encode TEXT,_index TEXT,_charset TEXT,_message INTEGER NOT NULL,_account INTEGER NOT NULL,_flags INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5104
    const-string v0, "CREATE INDEX IDX_parts_messageId ON parts (_message);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5105
    return-void
.end method

.method public static final createPartsTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4943
    const-string v0, "CREATE TABLE parts (_id INTEGER NOT NULL PRIMARY KEY,_mimetype TEXT NOT NULL,_nativeType TEXT,_filereference TEXT,_contentid TEXT,_filename TEXT DEFAULT \'\',_filepath TEXT,_text TEXT,_meetingMailBody TEXT,_uuid TEXT,_cid TEXT,_filesize INTEGER DEFAULT 0,_contenttype INTEGER DEFAULT 0,_inline INTEGER DEFAULT 0,_encode TEXT,_index TEXT,_charset TEXT,_message INTEGER NOT NULL,_account INTEGER NOT NULL,_flags INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4965
    const-string v0, "CREATE INDEX IDX_parts_messageId ON parts (_message);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4966
    return-void
.end method

.method public static final createPendingRequestsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4696
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_requests ( _id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, _accountId INTEGER NOT NULL, _messageId INTEGER, _msgId TEXT, _request INTEGER NOT NULL, _fromMailboxId INTEGER,  _uid TEXT,  _toMailboxId INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4706
    return-void
.end method

.method public static final createPendingRequestsTable_v118(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4683
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_requests ( _id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, _accountId INTEGER NOT NULL, _messageId INTEGER, _msgId TEXT, _request INTEGER NOT NULL, _fromMailboxId INTEGER,  _uid TEXT,  _toMailboxId INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4693
    return-void
.end method

.method public static final createSearchSvrMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5200
    const-string v0, "CREATE TABLE IF NOT EXISTS searchSvrMessages (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_uid TEXT,_collectionId,_from TEXT,_fromEmail TEXT COLLATE NOCASE,_subject TEXT DEFAULT \'\',_to TEXT,_cc TEXT,_bcc TEXT,_threadindex TEXT,_threadtopic TEXT,_headers TEXT,_date INTEGER,_internaldate INTEGER DEFAULT 0,_preview TEXT,_flags INTEGER,_read INTEGER DEFAULT 0,_del INTEGER DEFAULT -1,_readsize INTEGER DEFAULT 0,_readtotalsize INTEGER DEFAULT 0,_downloadtotalsize INTEGER DEFAULT 0,_messagesize INTEGER DEFAULT 0,_incAttachment INTEGER DEFAULT 0,_account INTEGER NOT NULL,_mailbox TEXT,_mailboxId INTEGER,_mailAct INTEGER DEFAULT 0,_toString TEXT,_ccString TEXT,_bccString TEXT,_displayMode INTEGER DEFAULT 0,_text TEXT,_htmlText TEXT,_messageid TEXT,_references TEXT,_group TEXT,_groupPseudo INTEGER DEFAULT 0,_charset TEXT,_subjtype TEXT DEFAULT \'\',_sync INTEGER DEFAULT 1,_done INTEGER DEFAULT 1,_local INTEGER DEFAULT 0,_tag INTEGER DEFAULT 0,_importance INTEGER DEFAULT 1,_notaddTrack INTEGER,_messageClass TEXT,_messageClassInt INTEGER DEFAULT 0,_smartCommand INTEGER DEFAULT 0,_refMsgId INTEGER DEFAULT 0,_allDayEvent TEXT,_startTime TEXT,_dtstamp TEXT,_endTime TEXT,_instanceType TEXT,_location TEXT,_organizer TEXT,_recurrenceId TEXT,_reminder TEXT,_responseRequested TEXT,_sensitivity TEXT,_IntdBusyStatus TEXT,_timezone TEXT,_globalObjId TEXT,_category TEXT,_recurrence_type TEXT DEFAULT \'-1\',_recurrence_occurrences TEXT,_recurrence_interval TEXT,_recurrence_dayofweek TEXT,_recurrence_dayofmonth TEXT,_recurrence_weekofmonth TEXT,_recurrence_monthofyear TEXT,_recurrence_until TEXT,_synckey TEXT,_replyTo TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5281
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_accountId ON searchSvrMessages (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5282
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_uid ON searchSvrMessages (_uid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5283
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_mailboxId ON searchSvrMessages (_mailboxId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5284
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_del ON searchSvrMessages (_del);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5285
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_internaldate ON searchSvrMessages (_internaldate);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5286
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_messageId ON searchSvrMessages (_messageid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5287
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_read on searchSvrMessages (_read);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5288
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_globalObjId on searchSvrMessages (_globalObjId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5289
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_fromEmail on searchSvrMessages (_fromEmail);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5290
    return-void
.end method

.method public static final createSearchSvrMessageTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5108
    const-string v0, "CREATE TABLE IF NOT EXISTS searchSvrMessages (_id INTEGER NOT NULL PRIMARY KEY,_uid TEXT,_collectionId,_from TEXT,_fromEmail TEXT COLLATE NOCASE,_subject TEXT DEFAULT \'\',_to TEXT,_cc TEXT,_bcc TEXT,_threadindex TEXT,_threadtopic TEXT,_headers TEXT,_date INTEGER,_internaldate INTEGER DEFAULT 0,_preview TEXT,_flags INTEGER,_read INTEGER DEFAULT 0,_del INTEGER DEFAULT -1,_readsize INTEGER DEFAULT 0,_readtotalsize INTEGER DEFAULT 0,_downloadtotalsize INTEGER DEFAULT 0,_messagesize INTEGER DEFAULT 0,_incAttachment INTEGER DEFAULT 0,_account INTEGER NOT NULL,_mailbox TEXT,_mailboxId INTEGER,_mailAct INTEGER DEFAULT 0,_toString TEXT,_ccString TEXT,_bccString TEXT,_displayMode INTEGER DEFAULT 0,_text TEXT,_htmlText TEXT,_messageid TEXT,_references TEXT,_group TEXT,_groupPseudo INTEGER DEFAULT 0,_charset TEXT,_subjtype TEXT DEFAULT \'\',_sync INTEGER DEFAULT 1,_done INTEGER DEFAULT 1,_local INTEGER DEFAULT 0,_tag INTEGER DEFAULT 0,_importance INTEGER DEFAULT 1,_notaddTrack INTEGER,_messageClass TEXT,_messageClassInt INTEGER DEFAULT 0,_smartCommand INTEGER DEFAULT 0,_refMsgId INTEGER DEFAULT 0,_allDayEvent TEXT,_startTime TEXT,_dtstamp TEXT,_endTime TEXT,_instanceType TEXT,_location TEXT,_organizer TEXT,_recurrenceId TEXT,_reminder TEXT,_responseRequested TEXT,_sensitivity TEXT,_IntdBusyStatus TEXT,_timezone TEXT,_globalObjId TEXT,_category TEXT,_recurrence_type TEXT DEFAULT \'-1\',_recurrence_occurrences TEXT,_recurrence_interval TEXT,_recurrence_dayofweek TEXT,_recurrence_dayofmonth TEXT,_recurrence_weekofmonth TEXT,_recurrence_monthofyear TEXT,_recurrence_until TEXT,_synckey TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5188
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_accountId ON searchSvrMessages (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5189
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_uid ON searchSvrMessages (_uid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5190
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_mailboxId ON searchSvrMessages (_mailboxId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5191
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_del ON searchSvrMessages (_del);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5192
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_internaldate ON searchSvrMessages (_internaldate);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5193
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_messageId ON searchSvrMessages (_messageid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5194
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_read on searchSvrMessages (_read);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5195
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_globalObjId on searchSvrMessages (_globalObjId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5196
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_fromEmail on searchSvrMessages (_fromEmail);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5197
    return-void
.end method

.method public static final createSearchSvrMessageTable_v112(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5293
    const-string v0, "CREATE TABLE IF NOT EXISTS searchSvrMessages (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,_uid TEXT,_collectionId,_from TEXT,_fromEmail TEXT COLLATE NOCASE,_subject TEXT DEFAULT \'\',_to TEXT,_cc TEXT,_bcc TEXT,_threadindex TEXT,_threadtopic TEXT,_headers TEXT,_date INTEGER,_internaldate INTEGER DEFAULT 0,_preview TEXT,_flags INTEGER,_read INTEGER DEFAULT 0,_del INTEGER DEFAULT -1,_readsize INTEGER DEFAULT 0,_readtotalsize INTEGER DEFAULT 0,_downloadtotalsize INTEGER DEFAULT 0,_messagesize INTEGER DEFAULT 0,_incAttachment INTEGER DEFAULT 0,_account INTEGER NOT NULL,_mailbox TEXT,_mailboxId INTEGER,_mailAct INTEGER DEFAULT 0,_toString TEXT,_ccString TEXT,_bccString TEXT,_displayMode INTEGER DEFAULT 0,_text TEXT,_htmlText TEXT,_messageid TEXT,_references TEXT,_group TEXT,_groupPseudo INTEGER DEFAULT 0,_charset TEXT,_subjtype TEXT DEFAULT \'\',_sync INTEGER DEFAULT 1,_done INTEGER DEFAULT 1,_local INTEGER DEFAULT 0,_tag INTEGER DEFAULT 0,_importance INTEGER DEFAULT 1,_notaddTrack INTEGER,_messageClass TEXT,_messageClassInt INTEGER DEFAULT 0,_smartCommand INTEGER DEFAULT 0,_refMsgId INTEGER DEFAULT 0,_allDayEvent TEXT,_startTime TEXT,_dtstamp TEXT,_endTime TEXT,_instanceType TEXT,_location TEXT,_organizer TEXT,_recurrenceId TEXT,_reminder TEXT,_responseRequested TEXT,_sensitivity TEXT,_IntdBusyStatus TEXT,_timezone TEXT,_globalObjId TEXT,_category TEXT,_recurrence_type TEXT DEFAULT \'-1\',_recurrence_occurrences TEXT,_recurrence_interval TEXT,_recurrence_dayofweek TEXT,_recurrence_dayofmonth TEXT,_recurrence_weekofmonth TEXT,_recurrence_monthofyear TEXT,_recurrence_until TEXT,_synckey TEXT,_replyTo TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5374
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_accountId ON searchSvrMessages (_account);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5375
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_uid ON searchSvrMessages (_uid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5376
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_mailboxId ON searchSvrMessages (_mailboxId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5377
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_del ON searchSvrMessages (_del);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5378
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_internaldate ON searchSvrMessages (_internaldate);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5379
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_messageId ON searchSvrMessages (_messageid);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5380
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_read on searchSvrMessages (_read);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5381
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_globalObjId on searchSvrMessages (_globalObjId);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5382
    const-string v0, "CREATE INDEX IDX_searchSvrMessages_fromEmail on searchSvrMessages (_fromEmail);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5383
    return-void
.end method

.method public static final createSearchSvrPartsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5412
    const-string v0, "CREATE TABLE IF NOT EXISTS searchSvrParts (_id INTEGER NOT NULL PRIMARY KEY,_mimetype TEXT NOT NULL,_nativeType TEXT,_filereference TEXT,_contentid TEXT,_filename TEXT DEFAULT \'\',_filepath TEXT,_text TEXT,_meetingMailBody TEXT,_uuid TEXT,_cid TEXT,_filesize INTEGER DEFAULT 0,_contenttype INTEGER DEFAULT 0,_inline INTEGER DEFAULT 0,_encode TEXT,_index TEXT,_charset TEXT,_message INTEGER NOT NULL,_account INTEGER NOT NULL,_flags INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5434
    const-string v0, "CREATE INDEX IF NOT EXISTS IDX_searchSvrParts_messageId ON searchSvrParts (_message);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5435
    return-void
.end method

.method public static final createSearchSvrPartsTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5386
    const-string v0, "CREATE TABLE IF NOT EXISTS searchSvrParts (_id INTEGER NOT NULL PRIMARY KEY,_mimetype TEXT NOT NULL,_nativeType TEXT,_filereference TEXT,_contentid TEXT,_filename TEXT DEFAULT \'\',_filepath TEXT,_text TEXT,_meetingMailBody TEXT,_uuid TEXT,_cid TEXT,_filesize INTEGER DEFAULT 0,_contenttype INTEGER DEFAULT 0,_inline INTEGER DEFAULT 0,_encode TEXT,_index TEXT,_charset TEXT,_message INTEGER NOT NULL,_account INTEGER NOT NULL,_flags INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5408
    const-string v0, "CREATE INDEX IF NOT EXISTS IDX_searchSvrParts_messageId ON searchSvrParts (_message);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5409
    return-void
.end method

.method public static final createTagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5454
    const-string v0, "CREATE TABLE IF NOT EXISTS tags (_id INTEGER NOT NULL PRIMARY KEY,_tagName TEXT DEFAULT \'\');"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5460
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_tags_from_tagId BEFORE DELETE ON tags BEGIN DELETE FROM messages_tags_relation WHERE old._id = _tagId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5467
    return-void
.end method

.method public static final createTagsTable_v117(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5438
    const-string v0, "CREATE TABLE IF NOT EXISTS tags (_id INTEGER NOT NULL PRIMARY KEY,_tagName TEXT DEFAULT \'\');"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5444
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_tags_from_tagId BEFORE DELETE ON tags BEGIN DELETE FROM messages_tags_relation WHERE old._id = _tagId; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5451
    return-void
.end method

.method public static final deleteAccountById(J)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 5495
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    .line 5498
    .local v1, cp:Landroid/content/IContentProvider;
    :try_start_0
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailProvider"

    const-string v4, "deleteAccountById(): deleteBufferFile"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5501
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5507
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_1

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 5508
    :cond_1
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 5509
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAccountById>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5511
    :cond_2
    return-void

    .line 5502
    .end local v0           #count:I
    :catch_0
    move-exception v2

    .line 5503
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5504
    const/4 v0, -0x1

    .restart local v0       #count:I
    goto :goto_0
.end method

.method private final deleteAccountMessages(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 6119
    const-string v1, "_account"

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Ljava/lang/String;J)V

    .line 6121
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v0

    .line 6123
    .local v0, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    const-string v1, "parts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6124
    const-string v1, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6128
    const-string v1, "mailboxs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6130
    const/4 v9, -0x1

    .line 6131
    .local v9, protocol:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_protocol"

    aput-object v3, v2, v1

    .line 6132
    .local v2, proj:[Ljava/lang/String;
    const-string v1, "accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6133
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6134
    const-string v1, "_protocol"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 6136
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6140
    :cond_1
    const/4 v1, 0x4

    if-ne v9, v1, :cond_2

    .line 6141
    const-string v1, "easTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_accountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6142
    const-string v1, "searchSvrMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6143
    const-string v1, "searchSvrParts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6144
    const-string v1, "mailboxs"

    const-string v3, "_account=-1"

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6146
    :cond_2
    return-void
.end method

.method private final deleteBinaryAttachments(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 6225
    if-eqz p1, :cond_1

    .line 6226
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6227
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/android/mail/Attachment;->deleteAttachThumb(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 6228
    const-string v2, "_filepath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6230
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider;->isMailCustomData(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6231
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6232
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6233
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 6238
    .end local v0           #file:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final deleteBinaryAttachments(Ljava/lang/String;J)V
    .locals 15
    .parameter "keyColumn"
    .parameter "id"

    .prologue
    .line 6171
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v2

    .line 6172
    .local v2, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    const/4 v10, 0x0

    .line 6174
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "parts"

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_filepath IS NOT NULL AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6177
    if-eqz v10, :cond_5

    .line 6179
    const-string v3, "_filepath"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 6180
    .local v11, column:I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6182
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/htc/android/mail/Attachment;->deleteAttachThumb(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 6183
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6185
    .local v14, path:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/mail/MailProvider;->isMailCustomData(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6186
    new-instance v13, Ljava/io/File;

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6187
    .local v13, file:Ljava/io/File;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6188
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6189
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6194
    .end local v11           #column:I
    .end local v13           #file:Ljava/io/File;
    .end local v14           #path:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 6195
    .local v12, e:Ljava/lang/SecurityException;
    :try_start_1
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEASBinaryAttachments() SecurityException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6199
    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6200
    .end local v12           #e:Ljava/lang/SecurityException;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6202
    :cond_2
    return-void

    .line 6196
    :catch_1
    move-exception v12

    .line 6197
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEASBinaryAttachments() Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6199
    :cond_3
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 6200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6199
    :cond_4
    throw v3

    :cond_5
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1
.end method

.method private final deleteMessageParts(JZ)I
    .locals 4
    .parameter "messageId"
    .parameter "delAttachment"

    .prologue
    .line 6149
    if-eqz p3, :cond_0

    .line 6150
    const-string v1, "_message"

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Ljava/lang/String;J)V

    .line 6152
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v0

    .line 6153
    .local v0, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    const-string v1, "parts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final deleteMessagesByMailbox(JJ)V
    .locals 18
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 4238
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 4239
    .local v2, cp:Landroid/content/IContentProvider;
    const/4 v8, 0x0

    .line 4242
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4243
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4244
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4303
    :cond_0
    :goto_0
    return-void

    .line 4248
    :cond_1
    const-string v3, "_protocol"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 4249
    .local v14, mProtocol:I
    invoke-static {v14}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v13

    .line 4250
    .local v13, isIMAP4:Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4254
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v3}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v3

    const-string v4, "select t2._filepath from messages t1, parts t2 where t1._id = t2._message and t1._account = ? and t1._mailboxId = ? and t2._filepath is not null"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4278
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4279
    const-string v3, "_filepath"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4280
    .local v12, filepath:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/android/mail/MailProvider;->isMailCustomData(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 4281
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4282
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4283
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 4295
    .end local v11           #file:Ljava/io/File;
    .end local v12           #filepath:Ljava/lang/String;
    .end local v13           #isIMAP4:Z
    .end local v14           #mProtocol:I
    :catch_0
    move-exception v10

    .line 4296
    .local v10, ex:Landroid/os/DeadObjectException;
    const/4 v9, -0x1

    .line 4301
    .end local v10           #ex:Landroid/os/DeadObjectException;
    :goto_2
    if-eqz v8, :cond_0

    .line 4302
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4292
    .restart local v13       #isIMAP4:Z
    .restart local v14       #mProtocol:I
    :cond_3
    :try_start_1
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v3}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v3

    const-string v4, "messages"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_account = \'%d\' and _mailboxId = \'%d\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v7, v16

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4297
    .end local v13           #isIMAP4:Z
    .end local v14           #mProtocol:I
    :catch_1
    move-exception v15

    .line 4298
    .local v15, rex:Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private deleteSyncAcount(Landroid/content/Context;Lcom/htc/android/mail/MailProvider$DatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "dbWrapper"
    .parameter "where"
    .parameter "emailAddress"

    .prologue
    .line 6863
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_emailaddress"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_protocol"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, " _provider"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "_providerGroup"

    aput-object v2, v3, v1

    .line 6864
    .local v3, columns:[Ljava/lang/String;
    const-string v2, "accounts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 6865
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_8

    .line 6866
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6867
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 6868
    .local v10, accountName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 6869
    .local v13, protocol:I
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6870
    .local v14, provider:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6871
    .local v15, providerGroup:Ljava/lang/String;
    const-string v1, "Yahoo"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6872
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->getEncryptKey(Landroid/content/Context;)[B

    move-result-object v11

    .line 6873
    .local v11, byteKey:[B
    invoke-static {v11, v10}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6875
    .end local v11           #byteKey:[B
    :cond_1
    const/4 v1, 0x4

    if-eq v13, v1, :cond_0

    const/16 v1, 0xa

    if-eq v13, v1, :cond_0

    .line 6876
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6878
    const-string v16, "com.htc.android.mail"

    .line 6879
    .local v16, type:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    if-ne v13, v1, :cond_2

    .line 6880
    const-string v1, "Yahoo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6881
    sget-object v16, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .line 6893
    :cond_2
    :goto_1
    new-instance v9, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v9, v10, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6895
    .local v9, account:Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v9, v2, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 6882
    .end local v9           #account:Landroid/accounts/Account;
    :cond_3
    const-string v1, "AOL"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6883
    sget-object v16, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_1

    .line 6884
    :cond_4
    const-string v1, "MSN"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6885
    sget-object v16, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_1

    .line 6886
    :cond_5
    const-string v1, "Google"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6887
    sget-object v16, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    goto :goto_1

    .line 6889
    :cond_6
    const-string v16, "com.htc.android.mail"

    goto :goto_1

    .line 6898
    .end local v10           #accountName:Ljava/lang/String;
    .end local v13           #protocol:I
    .end local v14           #provider:Ljava/lang/String;
    .end local v15           #providerGroup:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 6900
    :cond_8
    return-void
.end method

.method private encInformationifNeed(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "c"
    .parameter "cv"

    .prologue
    .line 6963
    if-nez p2, :cond_1

    .line 6998
    :cond_0
    :goto_0
    return-void

    .line 6966
    :cond_1
    const-string v2, "_providerGroup"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "Yahoo"

    const-string v3, "_providerGroup"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6968
    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->getEncryptKey(Landroid/content/Context;)[B

    move-result-object v0

    .line 6970
    .local v0, byteKey:[B
    const-string v2, "_emailaddress"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6971
    const-string v2, "_emailaddress"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6972
    .local v1, value:Ljava/lang/String;
    const-string v2, "_emailaddress"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6973
    const-string v2, "_emailaddress"

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->encryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6975
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    const-string v2, "_username"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6976
    const-string v2, "_username"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6977
    .restart local v1       #value:Ljava/lang/String;
    const-string v2, "_username"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6978
    const-string v2, "_username"

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->encryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6980
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    const-string v2, "_outusername"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6981
    const-string v2, "_outusername"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6982
    .restart local v1       #value:Ljava/lang/String;
    const-string v2, "_outusername"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6983
    const-string v2, "_outusername"

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->encryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6985
    .end local v1           #value:Ljava/lang/String;
    :cond_4
    const-string v2, "_password"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6986
    const-string v2, "_password"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6987
    .restart local v1       #value:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6988
    const-string v2, "_password"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6989
    const-string v2, "_password"

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->encryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6991
    .end local v1           #value:Ljava/lang/String;
    :cond_5
    const-string v2, "_outpassword"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6992
    const-string v2, "_outpassword"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6993
    .restart local v1       #value:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6994
    const-string v2, "_outpassword"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6995
    const-string v2, "_outpassword"

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->encryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final getAccount(J)Lcom/htc/android/mail/Account;
    .locals 2
    .parameter "id"

    .prologue
    .line 5984
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 5985
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    return-object v1
.end method

.method public static final getAccountCount(Z)I
    .locals 10
    .parameter "del"

    .prologue
    const/4 v9, 0x0

    .line 5762
    const-string v3, "_del != \'1\'"

    .line 5764
    .local v3, where:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 5765
    const-string v3, "_del = \'1\'"

    .line 5767
    :cond_0
    const/4 v7, 0x0

    .line 5768
    .local v7, num:I
    const/4 v6, 0x0

    .line 5769
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5771
    .local v0, cp:Landroid/content/IContentProvider;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5772
    if-eqz v6, :cond_1

    .line 5773
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5774
    const-string v1, "_total"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 5781
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v7

    .line 5783
    :goto_0
    return v1

    .line 5778
    :catch_0
    move-exception v8

    .line 5781
    .local v8, rex:Landroid/os/RemoteException;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v9

    .line 5779
    goto :goto_0

    .line 5781
    .end local v8           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static final getAccountCursor(J)Landroid/database/Cursor;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 5966
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5969
    .local v0, cp:Landroid/content/IContentProvider;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 5970
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    .line 5976
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 5980
    :goto_1
    return-object v2

    .line 5972
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/accounts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 5977
    :catch_0
    move-exception v6

    .local v6, ex:Landroid/os/DeadObjectException;
    move-object v2, v8

    .line 5978
    goto :goto_1

    .line 5979
    .end local v6           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v7

    .local v7, rex:Landroid/os/RemoteException;
    move-object v2, v8

    .line 5980
    goto :goto_1
.end method

.method private getAccountEncodedColorIdx(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;Ljava/lang/String;)I
    .locals 14
    .parameter "dbWrapper"
    .parameter "providerGroup"

    .prologue
    .line 6687
    if-eqz p2, :cond_5

    .line 6688
    const-string v1, "accounts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v0

    const-string v3, "_providerGroup like ? AND _del = -1"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6689
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 6690
    .local v9, count:I
    if-eqz v8, :cond_1

    .line 6691
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 6692
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6694
    :cond_1
    if-nez v9, :cond_5

    .line 6695
    const-string v0, "Exchange"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6696
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v11

    .line 6722
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #count:I
    :cond_2
    :goto_0
    return v11

    .line 6697
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #count:I
    :cond_3
    const-string v0, "Gmail"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6698
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v11

    goto :goto_0

    .line 6699
    :cond_4
    const-string v0, "Yahoo"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6700
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v11

    goto :goto_0

    .line 6705
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #count:I
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/Account;->getDefaultEncodedColorIdx()I

    move-result v11

    .line 6706
    .local v11, encodedColorIndex:I
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_colorIdx >= %d AND _del = -1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6707
    .local v3, where:Ljava/lang/String;
    const-string v1, "accounts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_colorIdx"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_colorIdx asc"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6708
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 6709
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v11

    .line 6710
    const/4 v12, 0x0

    .line 6711
    .local v12, i:I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6712
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/android/mail/Account;->getDecodedColorIdx(I)[I

    move-result-object v13

    .line 6713
    .local v13, result:[I
    const/16 v0, 0x10

    if-lt v12, v0, :cond_7

    .line 6719
    .end local v13           #result:[I
    :cond_6
    const/4 v0, 0x1

    rem-int/lit8 v1, v12, 0x10

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v11

    .line 6720
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6714
    .restart local v13       #result:[I
    :cond_7
    const/4 v0, 0x1

    aget v0, v13, v0

    if-ne v12, v0, :cond_6

    .line 6717
    add-int/lit8 v12, v12, 0x1

    .line 6718
    goto :goto_1
.end method

.method public static final getAccountIDs()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5725
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5728
    .local v0, cp:Landroid/content/IContentProvider;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5732
    :goto_0
    return-object v1

    .line 5729
    :catch_0
    move-exception v6

    .local v6, ex:Landroid/os/DeadObjectException;
    move-object v1, v8

    .line 5730
    goto :goto_0

    .line 5731
    .end local v6           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v7

    .local v7, rex:Landroid/os/RemoteException;
    move-object v1, v8

    .line 5732
    goto :goto_0
.end method

.method public static final getAccounts()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 5720
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccountCursor(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCombinedAccountMailboxIdSeq(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "combinedMailboxId"

    .prologue
    .line 6778
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 6779
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v1, p1}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 6780
    .local v2, accounts:[Lcom/htc/android/mail/Account;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 6781
    .local v8, sb:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 6782
    .local v7, mailboxIds:[J
    const/4 v6, 0x0

    .line 6783
    .local v6, mailbox:Lcom/htc/android/mail/Mailbox;
    move-object v3, v2

    .local v3, arr$:[Lcom/htc/android/mail/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_9

    aget-object v0, v3, v4

    .line 6784
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    if-nez v9, :cond_1

    .line 6783
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6785
    :cond_1
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, p2, v9

    if-nez v9, :cond_4

    .line 6786
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    .line 6799
    :cond_2
    :goto_2
    if-eqz v6, :cond_0

    .line 6800
    invoke-virtual {v6}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J

    move-result-object v7

    .line 6801
    if-eqz v7, :cond_0

    .line 6803
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 6804
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6806
    :cond_3
    invoke-static {v7}, Lcom/htc/android/mail/MailCommon;->getLongSequence([J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 6787
    :cond_4
    const-wide v9, 0x7ffffffffffffffeL

    cmp-long v9, p2, v9

    if-nez v9, :cond_5

    .line 6788
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    goto :goto_2

    .line 6789
    :cond_5
    const-wide v9, 0x7ffffffffffffffdL

    cmp-long v9, p2, v9

    if-nez v9, :cond_6

    .line 6790
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    goto :goto_2

    .line 6791
    :cond_6
    const-wide v9, 0x7ffffffffffffffcL

    cmp-long v9, p2, v9

    if-nez v9, :cond_7

    .line 6792
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    goto :goto_2

    .line 6793
    :cond_7
    const-wide v9, 0x7ffffffffffffffbL

    cmp-long v9, p2, v9

    if-nez v9, :cond_8

    .line 6794
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    goto :goto_2

    .line 6796
    :cond_8
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    .line 6797
    iget v9, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    const v10, 0x7ffffffa

    if-eq v9, v10, :cond_2

    new-instance v9, Ljava/lang/Error;

    const-string v10, "not mailboxId for combined account"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9

    .line 6808
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private declared-synchronized getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .locals 2

    .prologue
    .line 2011
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider;->mDbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    if-nez v0, :cond_0

    .line 2012
    new-instance v0, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;-><init>(Lcom/htc/android/mail/MailProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailProvider;->mDbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider;->mDbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2011
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final getDefaultAccount()Landroid/database/Cursor;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 5789
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5790
    .local v0, cp:Landroid/content/IContentProvider;
    const-string v3, "_defaultaccount=1"

    .line 5791
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 5792
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 5794
    .local v11, cursor2:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5797
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v10

    .line 5819
    :goto_0
    return-object v1

    .line 5801
    :cond_0
    if-eqz v10, :cond_1

    .line 5802
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5803
    :cond_1
    const/4 v10, 0x0

    .line 5806
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5807
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v11

    .line 5808
    goto :goto_0

    .line 5810
    :cond_2
    if-eqz v11, :cond_3

    .line 5811
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v1, v13

    .line 5812
    goto :goto_0

    .line 5815
    :catch_0
    move-exception v12

    .line 5816
    .local v12, rex:Landroid/os/RemoteException;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5817
    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v1, v13

    .line 5819
    goto :goto_0
.end method

.method public static final getDefaultAccountId()J
    .locals 15

    .prologue
    const-wide/16 v12, -0x1

    .line 5825
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5826
    .local v0, cp:Landroid/content/IContentProvider;
    const-string v3, "_defaultaccount=1"

    .line 5827
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 5828
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 5831
    .local v11, cursor2:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5834
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 5835
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 5836
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 5853
    .local v12, id:J
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5854
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5855
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5856
    .end local v12           #id:J
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5851
    :cond_1
    return-wide v12

    .line 5841
    :cond_2
    :try_start_1
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_del = -1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5842
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 5843
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 5844
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    .line 5853
    .restart local v12       #id:J
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5854
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5855
    :cond_3
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5850
    .end local v12           #id:J
    :catch_0
    move-exception v14

    .line 5853
    .local v14, rex:Landroid/os/RemoteException;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5854
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5855
    :cond_4
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5853
    .end local v14           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5854
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5855
    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 5856
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5853
    :cond_6
    throw v1

    :cond_7
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5854
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5855
    :cond_8
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public static final getDefaultExchangeAccountId()J
    .locals 12

    .prologue
    .line 5861
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5862
    .local v0, cp:Landroid/content/IContentProvider;
    const-string v3, "_del = -1 AND _protocol=4"

    .line 5863
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 5864
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 5866
    .local v6, accountId:J
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5867
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 5868
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 5869
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 5875
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5876
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v8, v6

    .line 5880
    .end local v6           #accountId:J
    .local v8, accountId:J
    :goto_0
    return-wide v8

    .line 5872
    .end local v8           #accountId:J
    .restart local v6       #accountId:J
    :catch_0
    move-exception v11

    .line 5873
    .local v11, rex:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5875
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5876
    .end local v11           #rex:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v8, v6

    .line 5880
    .end local v6           #accountId:J
    .restart local v8       #accountId:J
    goto :goto_0

    .line 5875
    .end local v8           #accountId:J
    .restart local v6       #accountId:J
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5876
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5875
    :cond_2
    throw v1

    :cond_3
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method public static final getLastAccountEnterId()J
    .locals 6

    .prologue
    .line 5884
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "account"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "LAST_ACCOUNT_ENTER"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 5886
    .local v0, accountId:J
    return-wide v0
.end method

.method public static getMessageDoneObserverCursor(JI)Landroid/database/Cursor;
    .locals 9
    .parameter "messageId"
    .parameter "protocol"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 6252
    const-string v0, "MailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDoneObserverCursor(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6253
    const/4 v8, 0x0

    .line 6255
    .local v8, cursor:Landroid/database/Cursor;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id = \'%d\'"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6256
    .local v3, where:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6257
    :cond_0
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_done"

    aput-object v5, v2, v6

    const-string v5, "_del"

    aput-object v5, v2, v7

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6258
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/msgDone/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 6259
    return-object v8
.end method

.method static final getProvider(J)Landroid/database/Cursor;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 6044
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 6047
    .local v0, cp:Landroid/content/IContentProvider;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 6048
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    .line 6054
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 6058
    :goto_1
    return-object v2

    .line 6050
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/providers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 6055
    :catch_0
    move-exception v6

    .local v6, ex:Landroid/os/DeadObjectException;
    move-object v2, v8

    .line 6056
    goto :goto_1

    .line 6057
    .end local v6           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v7

    .local v7, rex:Landroid/os/RemoteException;
    move-object v2, v8

    .line 6058
    goto :goto_1
.end method

.method static final getProvider(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "provider"

    .prologue
    const/4 v8, 0x0

    .line 6063
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 6064
    .local v0, cp:Landroid/content/IContentProvider;
    const/4 v1, 0x0

    .line 6066
    .local v1, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    .line 6067
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    .line 6072
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_provider=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6073
    .local v3, where:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 6077
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v8

    .line 6069
    goto :goto_0

    .line 6074
    :catch_0
    move-exception v6

    .local v6, ex:Landroid/os/DeadObjectException;
    move-object v2, v8

    .line 6075
    goto :goto_0

    .line 6076
    .end local v6           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v7

    .local v7, rex:Landroid/os/RemoteException;
    move-object v2, v8

    .line 6077
    goto :goto_0
.end method

.method public static final getTotalMailNum(JIJ)I
    .locals 10
    .parameter "accountId"
    .parameter "serverType"
    .parameter "mailboxId"

    .prologue
    const/4 v8, 0x0

    .line 6017
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 6019
    .local v0, cp:Landroid/content/IContentProvider;
    const/4 v6, 0x0

    .line 6021
    .local v6, c:Landroid/database/Cursor;
    invoke-static {p0, p1, p3, p4}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 6024
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6025
    if-eqz v6, :cond_2

    .line 6026
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6027
    const-string v2, "_total"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 6037
    .local v8, num:I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6038
    .end local v8           #num:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6035
    :cond_0
    return v8

    .line 6032
    :catch_0
    move-exception v7

    .line 6037
    .local v7, ex:Landroid/os/DeadObjectException;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6034
    .end local v7           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v9

    .line 6037
    .local v9, rex:Landroid/os/RemoteException;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .end local v9           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6038
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6037
    :cond_1
    throw v2

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public static final getUnread(JIJ)I
    .locals 11
    .parameter "accountId"
    .parameter "serverType"
    .parameter "mailboxId"

    .prologue
    const/4 v10, 0x0

    .line 5989
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5991
    .local v0, cp:Landroid/content/IContentProvider;
    const/4 v6, 0x0

    .line 5993
    .local v6, c:Landroid/database/Cursor;
    const-string v2, "unread"

    invoke-static {p0, p1, p3, p4, v2}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5996
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 5997
    .local v8, num:I
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5998
    if-eqz v6, :cond_0

    .line 5999
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6000
    const-string v2, "_total"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 6009
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6010
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6007
    .end local v8           #num:I
    :cond_1
    :goto_0
    return v8

    .line 6004
    .restart local v8       #num:I
    :catch_0
    move-exception v7

    .line 6009
    .local v7, ex:Landroid/os/DeadObjectException;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6010
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v10

    .line 6005
    goto :goto_0

    .line 6006
    .end local v7           #ex:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v9

    .line 6009
    .local v9, rex:Landroid/os/RemoteException;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6010
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v10

    .line 6007
    goto :goto_0

    .line 6009
    .end local v9           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6010
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6009
    :cond_4
    throw v2
.end method

.method private getWhereForSummariesWithMailbox(Landroid/net/Uri;)Ljava/lang/String;
    .locals 15
    .parameter "uri"

    .prologue
    .line 6726
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailCommon;->parseSummariesWithMailboxUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v10

    .line 6727
    .local v10, segments:[Ljava/lang/String;
    if-nez v10, :cond_0

    const-string v12, ""

    .line 6774
    :goto_0
    return-object v12

    .line 6728
    :cond_0
    array-length v12, v10

    const/4 v13, 0x2

    if-ge v12, v13, :cond_1

    const-string v12, ""

    goto :goto_0

    .line 6729
    :cond_1
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 6730
    .local v1, accountId:J
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 6731
    .local v6, mailboxId:J
    const/4 v4, 0x0

    .line 6732
    .local v4, filter:Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x2

    if-le v12, v13, :cond_2

    const/4 v12, 0x2

    aget-object v4, v10, v12

    .line 6734
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 6735
    .local v11, where:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 6737
    .local v3, accountPool:Lcom/htc/android/mail/AccountPool;
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v1, v12

    if-nez v12, :cond_5

    .line 6738
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {p0, v12, v6, v7}, Lcom/htc/android/mail/MailProvider;->getCombinedAccountMailboxIdSeq(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 6739
    .local v8, mailboxIdSeq:Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v12, ""

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 6740
    const-string v12, " (messages._mailboxId IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")) "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6758
    .end local v8           #mailboxIdSeq:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_a

    .line 6759
    const-string v12, " AND (messages._del = -1) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6764
    :goto_2
    const-string v12, "unread"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 6765
    const-string v12, " AND (messages._read = 0) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6774
    :cond_4
    :goto_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 6743
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v3, v12, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 6744
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_6

    const-string v12, ""

    goto :goto_0

    .line 6745
    :cond_6
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v12

    if-nez v12, :cond_7

    const-string v12, ""

    goto/16 :goto_0

    .line 6746
    :cond_7
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    .line 6747
    .local v5, mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v5, :cond_8

    const-string v12, ""

    goto/16 :goto_0

    .line 6748
    :cond_8
    invoke-virtual {v5}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J

    move-result-object v9

    .line 6749
    .local v9, mailboxIds:[J
    if-eqz v9, :cond_3

    array-length v12, v9

    if-lez v12, :cond_3

    .line 6750
    array-length v12, v9

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 6751
    const-string v12, " (messages._mailboxId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-wide v13, v9, v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6753
    :cond_9
    const-string v12, " (messages._mailboxId IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Lcom/htc/android/mail/MailCommon;->getLongSequence([J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")) "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6761
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v5           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v9           #mailboxIds:[J
    :cond_a
    const-string v12, " (messages._del = -1) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6766
    :cond_b
    const-string v12, "markStar"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 6767
    const-string v12, " AND (messages._flags = 2)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6768
    :cond_c
    const-string v12, "attach"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 6769
    const-string v12, " AND (messages._incAttachment = 1)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6770
    :cond_d
    const-string v12, "meeting"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 6771
    const-string v12, " AND (messages._messageClassInt = 6)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method private handleLowStorage(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 10
    .parameter "dbWrapper"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 6905
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 6906
    .local v0, accounts:[Lcom/htc/android/mail/Account;
    array-length v1, v0

    .line 6907
    .local v1, count:I
    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 6908
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_2

    .line 6909
    aget-object v7, v0, v3

    if-nez v7, :cond_1

    .line 6908
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6913
    :cond_1
    aget-object v7, v0, v3

    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "_fetchMailDays"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/mail/Account;->setFetchMailDaysIndex(Landroid/content/Context;I)V

    .line 6914
    aget-object v7, v0, v3

    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 6917
    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 6918
    const/4 v6, 0x2

    .line 6919
    .local v6, value:I
    const-string v7, "_fetchMailDays"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6920
    .local v2, fetchMailDays:I
    packed-switch v2, :pswitch_data_0

    .line 6940
    const/4 v6, 0x2

    .line 6943
    :goto_2
    new-instance v5, Lcom/htc/android/mail/server/ExchangeServer;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-direct {v5, v7, v8}, Lcom/htc/android/mail/server/ExchangeServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 6944
    .local v5, server:Lcom/htc/android/mail/server/ExchangeServer;
    invoke-virtual {v5}, Lcom/htc/android/mail/server/ExchangeServer;->getSyncOption()Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v4

    .line 6945
    .local v4, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    if-eqz v4, :cond_0

    .line 6946
    iput v6, v4, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 6947
    invoke-virtual {v5, v4}, Lcom/htc/android/mail/server/ExchangeServer;->updateSyncOption(Lcom/htc/android/mail/eassvc/pim/EASOptions;)V

    goto :goto_1

    .line 6922
    .end local v4           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v5           #server:Lcom/htc/android/mail/server/ExchangeServer;
    :pswitch_0
    const/4 v6, 0x1

    .line 6923
    goto :goto_2

    .line 6925
    :pswitch_1
    const/4 v6, 0x2

    .line 6926
    goto :goto_2

    .line 6928
    :pswitch_2
    const/4 v6, 0x3

    .line 6929
    goto :goto_2

    .line 6931
    :pswitch_3
    const/4 v6, 0x4

    .line 6932
    goto :goto_2

    .line 6934
    :pswitch_4
    const/4 v6, 0x5

    .line 6935
    goto :goto_2

    .line 6937
    :pswitch_5
    const/4 v6, 0x0

    .line 6938
    goto :goto_2

    .line 6952
    .end local v2           #fetchMailDays:I
    .end local v3           #i:I
    .end local v6           #value:I
    :cond_2
    return v1

    .line 6920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static haveTheLastUid(Ljava/lang/String;JJI)Z
    .locals 14
    .parameter "lastuidInServer"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "protocol"

    .prologue
    .line 6282
    const/4 v9, 0x0

    .line 6283
    .local v9, haveUid:Z
    const/4 v7, 0x0

    .line 6284
    .local v7, c:Landroid/database/Cursor;
    if-nez p0, :cond_0

    const-string p0, ""

    .line 6286
    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_6

    .line 6288
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "min(abs(_uid)) as _minuid"

    aput-object v5, v3, v4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_mailboxId = \'%d\' AND _account = \'%d\' AND _del=-1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 6296
    :goto_0
    const-string v10, ""

    .line 6298
    .local v10, minUid:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 6299
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6300
    const/4 v1, 0x1

    .line 6343
    .end local v10           #minUid:Ljava/lang/String;
    :goto_1
    return v1

    .line 6293
    :catch_0
    move-exception v8

    .line 6294
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 6303
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v10       #minUid:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6304
    const-string v1, "_minuid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 6305
    const-string v1, "MailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "min uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6306
    if-eqz v10, :cond_2

    const-string v1, ""

    if-eq v10, v1, :cond_2

    const-string v1, ""

    if-ne p0, v1, :cond_3

    .line 6307
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6308
    const/4 v1, 0x1

    goto :goto_1

    .line 6310
    :cond_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6311
    const/4 v9, 0x1

    .line 6339
    .end local v10           #minUid:Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6340
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v9

    .line 6343
    goto :goto_1

    .line 6314
    :cond_6
    if-eqz p5, :cond_7

    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 6315
    :cond_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "SELECT _uid FROM messages WHERE _mailboxId = %d AND _del = -1 AND _internaldate = (SELECT min(_internaldate) FROM messages WHERE _mailboxId = %d AND _del = -1)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 6318
    .local v11, sql:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v1}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v1

    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6320
    const-string v10, ""

    .line 6321
    .restart local v10       #minUid:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_8

    .line 6322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6323
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 6326
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6327
    const-string v1, "_uid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 6328
    const-string v1, "MailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldest uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6329
    if-eqz v10, :cond_9

    const-string v1, ""

    if-eq v10, v1, :cond_9

    const-string v1, ""

    if-ne p0, v1, :cond_a

    .line 6330
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6331
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 6333
    :cond_a
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6334
    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method public static final instance()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 6114
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static isDBLocked()Z
    .locals 1

    .prologue
    .line 6398
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->isDBLocked()Z

    move-result v0

    return v0
.end method

.method private static isMailCustomData(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 6207
    if-nez p0, :cond_1

    move v1, v2

    .line 6221
    :cond_0
    :goto_0
    return v1

    .line 6209
    :cond_1
    const/4 v1, 0x0

    .line 6210
    .local v1, res:Z
    sget-object v3, Lcom/htc/android/mail/MailProvider;->MailApPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 6211
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mail"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/mail/MailProvider;->MailApPath:Ljava/lang/String;

    .line 6212
    :cond_2
    sget-object v2, Lcom/htc/android/mail/MailProvider;->MailApPath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6213
    const/4 v1, 0x1

    .line 6215
    :cond_3
    const-string v0, ".data/"

    .line 6216
    .local v0, RelatedPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 6217
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This file is in .data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6218
    :cond_4
    const/4 v1, 0x1

    .line 6220
    :cond_5
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMailCustomData<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->MailApPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "cr"
    .parameter "uri"
    .parameter "observer"

    .prologue
    .line 6673
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->applyingBatch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6674
    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 6683
    :goto_0
    return-void

    .line 6676
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6677
    .local v0, notifiedUriset:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    if-nez v0, :cond_1

    .line 6678
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0           #notifiedUriset:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6680
    .restart local v0       #notifiedUriset:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6681
    iget-object v1, p0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyCombinedAccount(Landroid/content/ContentResolver;JJ)V
    .locals 8
    .parameter "cr"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 6597
    const-wide/16 v2, -0x1

    .line 6599
    .local v2, combinedAccountMailboxId:J
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 6600
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6, p2, p3}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 6601
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    .line 6602
    .local v5, mailboxs:Lcom/htc/android/mail/Mailboxs;
    if-nez v5, :cond_1

    .line 6645
    :cond_0
    :goto_0
    return-void

    .line 6606
    :cond_1
    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 6607
    .local v4, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v4, :cond_2

    iget-wide v6, v4, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_2

    .line 6608
    const-wide v2, 0x7fffffffffffffffL

    .line 6609
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v2, v3}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 6614
    :cond_2
    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 6615
    if-eqz v4, :cond_3

    iget-wide v6, v4, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_3

    .line 6616
    const-wide v2, 0x7ffffffffffffffeL

    .line 6617
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v2, v3}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 6622
    :cond_3
    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 6623
    if-eqz v4, :cond_4

    iget-wide v6, v4, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_4

    .line 6624
    const-wide v2, 0x7ffffffffffffffdL

    .line 6625
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v2, v3}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 6630
    :cond_4
    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 6631
    if-eqz v4, :cond_5

    iget-wide v6, v4, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_5

    .line 6632
    const-wide v2, 0x7ffffffffffffffcL

    .line 6633
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v2, v3}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 6638
    :cond_5
    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 6639
    if-eqz v4, :cond_0

    iget-wide v6, v4, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_0

    .line 6640
    const-wide v2, 0x7ffffffffffffffbL

    .line 6641
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v2, v3}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method private notifyCombinedAccountAndMailbox(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 7
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 6663
    invoke-static {p2}, Lcom/htc/android/mail/MailCommon;->parseSummariesWithMailboxUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v6

    .line 6664
    .local v6, segments:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v0, v6

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 6670
    :cond_0
    :goto_0
    return-void

    .line 6665
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 6666
    .local v2, accountId:J
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, mailboxId:J
    move-object v0, p0

    move-object v1, p1

    .line 6668
    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailProvider;->notifyCombinedAccount(Landroid/content/ContentResolver;JJ)V

    move-object v0, p0

    move-object v1, p1

    .line 6669
    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailProvider;->notifyCombinedMailbox(Landroid/content/ContentResolver;JJ)V

    goto :goto_0
.end method

.method private notifyCombinedMailbox(Landroid/content/ContentResolver;JJ)V
    .locals 14
    .parameter "cr"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 6649
    .local v3, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v3, v10, v0, v1}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 6650
    .local v2, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    .line 6651
    .local v9, mailboxs:Lcom/htc/android/mail/Mailboxs;
    if-nez v9, :cond_1

    .line 6660
    :cond_0
    return-void

    .line 6652
    :cond_1
    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getCombinedMailboxs()[Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    .line 6653
    .local v6, combinedMailboxs:[Lcom/htc/android/mail/Mailbox;
    move-object v4, v6

    .local v4, arr$:[Lcom/htc/android/mail/Mailbox;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v5, v4, v7

    .line 6654
    .local v5, combinedMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v5, :cond_3

    .line 6653
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6655
    :cond_3
    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailbox;->contains(J)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6656
    iget-wide v10, v5, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v10, v11}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {p0, p1, v10, v11}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6657
    const-wide v10, 0x7fffffffffffffffL

    iget-wide v12, v5, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {p0, p1, v10, v11}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method public static final resetDefaultAccount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5912
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    .line 5913
    .local v1, cp:Landroid/content/IContentProvider;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5914
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_defaultaccount"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5915
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v3}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v3

    const-string v4, "accounts"

    invoke-virtual {v3, v4, v2, v5, v5}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5916
    .local v0, count:I
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultAccountById>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5917
    :cond_0
    return-void
.end method

.method public static final setDefaultAccountByEmail(Ljava/lang/String;)V
    .locals 12
    .parameter "email"

    .prologue
    .line 5919
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 5920
    .local v0, cp:Landroid/content/IContentProvider;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 5921
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "_defaultaccount"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5923
    const/4 v6, 0x0

    .line 5925
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 5930
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 5931
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_defaultaccount"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 5934
    .local v10, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v10, v11, v1, v2}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5936
    :catch_0
    move-exception v8

    .line 5937
    .local v8, ex:Landroid/os/RemoteException;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5963
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 5927
    :catch_1
    move-exception v9

    .line 5928
    .local v9, rex:Landroid/os/RemoteException;
    goto :goto_1

    .line 5942
    .end local v9           #rex:Landroid/os/RemoteException;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5945
    new-instance v11, Landroid/content/ContentValues;

    .end local v11           #values:Landroid/content/ContentValues;
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 5946
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "_defaultaccount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5947
    const/4 v7, 0x0

    .line 5949
    .local v7, c2:Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_emailaddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 5955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 5957
    .restart local v10       #uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v0, v10, v11, v1, v2}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5962
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5951
    .end local v10           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v9

    .line 5952
    .restart local v9       #rex:Landroid/os/RemoteException;
    goto :goto_1

    .line 5958
    .end local v9           #rex:Landroid/os/RemoteException;
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v9

    .line 5959
    .restart local v9       #rex:Landroid/os/RemoteException;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static final setDefaultAccountById(Landroid/content/Context;J)V
    .locals 9
    .parameter "c"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 5890
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 5891
    .local v2, cp:Landroid/content/IContentProvider;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 5892
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_defaultaccount"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5894
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v6}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v6

    const-string v7, "accounts"

    invoke-virtual {v6, v7, v5, v8, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5895
    .local v1, count:I
    sget-boolean v6, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultAccountById>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5898
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 5899
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "_defaultaccount"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/accounts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 5902
    .local v4, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v2, v4, v5, v6, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5903
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v6}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 5904
    .local v0, accountpool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/android/mail/AccountPool;->setDefaultAccountById(Landroid/content/Context;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5909
    .end local v0           #accountpool:Lcom/htc/android/mail/AccountPool;
    :goto_0
    return-void

    .line 5906
    :catch_0
    move-exception v3

    .line 5907
    .local v3, rex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static final updateAccountCheckFreq(JI)I
    .locals 5
    .parameter "id"
    .parameter "freq"

    .prologue
    .line 5685
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/htc/android/mail/MailCommon;->setUpdateSyncSettingIntervalSecs(Landroid/content/Context;JI)V

    .line 5686
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5688
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_poll_frequency_number"

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5690
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v1}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v1

    const-string v2, "accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final updateAccountLastUpdateTime(J)I
    .locals 8
    .parameter "id"

    .prologue
    .line 5703
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_0

    .line 5704
    const/4 v4, 0x0

    .line 5716
    :goto_0
    return v4

    .line 5706
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5707
    .local v1, time:J
    invoke-static {p0, p1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 5708
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    .line 5709
    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Account;->setLastupdatetime(J)V

    .line 5712
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5714
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_lastupdatetime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5716
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v4}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v4

    const-string v5, "accounts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static final updateAccountPollTime(JJ)I
    .locals 5
    .parameter "id"
    .parameter "time"

    .prologue
    .line 5677
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5679
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_nextfetchtime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5681
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v1}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v1

    const-string v2, "accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final updateAccountPollTimeAndMarkFetch(JJ)I
    .locals 5
    .parameter "id"
    .parameter "time"

    .prologue
    const/4 v3, 0x1

    .line 5694
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 5696
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_nextfetchtime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5697
    const-string v1, "_fetchme"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5699
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v1}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v1

    const-string v2, "accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final updateCharset(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "charset"

    .prologue
    const/4 v9, 0x0

    .line 4184
    const-string v3, "messages"

    .line 4185
    .local v3, table:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCharset>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4187
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 4189
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "_charset"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v5}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6, v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4193
    .local v0, count:I
    if-lez v0, :cond_2

    .line 4194
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 4195
    .local v1, rowId:J
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "put2>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4196
    :cond_1
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v9, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4197
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "put2<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    .end local v1           #rowId:J
    :cond_2
    return v0
.end method

.method public static final updateFlags(Landroid/net/Uri;I)I
    .locals 12
    .parameter "uri"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 4146
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 4149
    .local v1, match:I
    packed-switch v1, :pswitch_data_0

    .line 4164
    sget-boolean v7, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailProvider"

    const-string v8, "updateFlags:unknown uri"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v6

    .line 4180
    :cond_1
    :goto_0
    return v0

    .line 4159
    :pswitch_0
    const-string v4, "accounts"

    .line 4168
    .local v4, table:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 4170
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "_flags"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4172
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v7}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8, v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4174
    .local v0, count:I
    if-lez v0, :cond_1

    .line 4175
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 4177
    .local v2, rowId:J
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v7}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p0, v11, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 4149
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static updateMessageDone(JII)I
    .locals 9
    .parameter "messageId"
    .parameter "done"
    .parameter "protocol"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 6265
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id = \'%d\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6266
    .local v2, where:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6267
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6268
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "_done"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6270
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailProvider"

    const-string v4, "before update"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6272
    :cond_1
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v3}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v3

    const-string v4, "messages"

    invoke-virtual {v3, v4, v1, v2, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 6273
    .local v0, num:I
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailProvider"

    const-string v4, "before notify"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6274
    :cond_2
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/msgDone/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 6275
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MailProvider"

    const-string v4, "after notify"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6277
    :cond_3
    return v0
.end method

.method public static final updateRead(Landroid/net/Uri;IZ)I
    .locals 12
    .parameter "uri"
    .parameter "read"
    .parameter "bNotifyChange"

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 4205
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 4207
    .local v1, match:I
    sget-boolean v7, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRead>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4208
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 4214
    sget-boolean v7, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MailProvider"

    const-string v8, "updateRead:unknown uri"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v6

    .line 4233
    :cond_2
    :goto_0
    return v0

    .line 4210
    :pswitch_0
    const-string v4, "messages"

    .line 4211
    .local v4, table:Ljava/lang/String;
    sget-boolean v7, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "MailProvider"

    const-string v8, "MESSAGE_ID>"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 4220
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "_read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4222
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-direct {v7}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8, v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4223
    .local v0, count:I
    sget-boolean v7, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "MailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "put>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    :cond_4
    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 4225
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 4226
    .local v2, rowId:J
    sget-boolean v7, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "MailProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "put2>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    :cond_5
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v7}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p0, v11, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4228
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v7}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sSummariesReadURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v11, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4229
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v7}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v11, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4230
    sget-boolean v6, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "put3<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4208
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static updateRetryCountToMessage(Landroid/content/Context;JI)I
    .locals 6
    .parameter "c"
    .parameter "msgId"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 6956
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6957
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "_retryCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6958
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 6959
    .local v1, ret:I
    return v1
.end method

.method private whereWithId(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "selection"

    .prologue
    .line 6585
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6586
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6587
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6588
    if-eqz p3, :cond_0

    .line 6589
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6590
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6591
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6593
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 2990
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v2

    .line 2991
    .local v2, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2992
    const/4 v5, 0x0

    .line 2994
    .local v5, isSuccessfulTransaction:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/MailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2995
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2996
    .local v8, numOperations:I
    new-array v10, v8, [Landroid/content/ContentProviderResult;

    .line 2997
    .local v10, results:[Landroid/content/ContentProviderResult;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_1

    .line 2998
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentProviderOperation;

    .line 2999
    .local v9, operation:Landroid/content/ContentProviderOperation;
    if-lez v3, :cond_0

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3000
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-wide/16 v14, 0xfa0

    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 3002
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10, v3}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v13

    aput-object v13, v10, v3

    .line 2997
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3004
    .end local v9           #operation:Landroid/content/ContentProviderOperation;
    :cond_1
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3005
    const/4 v5, 0x1

    .line 3008
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/MailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3009
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3011
    if-eqz v5, :cond_9

    .line 3012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3013
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz v6, :cond_9

    .line 3014
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    .line 3015
    .local v11, runnable:Ljava/lang/Runnable;
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 3028
    .end local v3           #i:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .end local v8           #numOperations:I
    .end local v10           #results:[Landroid/content/ContentProviderResult;
    .end local v11           #runnable:Ljava/lang/Runnable;
    .local v1, cr:Landroid/content/ContentResolver;
    .local v7, notifiedUriSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3008
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    throw v13

    .line 3028
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #numOperations:I
    .restart local v10       #results:[Landroid/content/ContentProviderResult;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3006
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    return-object v10

    .line 3008
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #i:I
    .end local v7           #notifiedUriSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v8           #numOperations:I
    .end local v10           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3009
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3011
    if-eqz v5, :cond_7

    .line 3012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3013
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz v6, :cond_7

    .line 3014
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    .line 3015
    .restart local v11       #runnable:Ljava/lang/Runnable;
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 3017
    .end local v11           #runnable:Ljava/lang/Runnable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3022
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 3023
    .restart local v7       #notifiedUriSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3024
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v7, :cond_3

    .line 3025
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 3026
    .local v12, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v12, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_3

    .line 3017
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v7           #notifiedUriSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v12           #uri:Landroid/net/Uri;
    .restart local v3       #i:I
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .restart local v8       #numOperations:I
    .restart local v10       #results:[Landroid/content/ContentProviderResult;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3022
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/MailProvider;->mNotifiedUriSets:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 3023
    .restart local v7       #notifiedUriSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3024
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v7, :cond_5

    .line 3025
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 3026
    .restart local v12       #uri:Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_4
.end method

.method protected applyingBatch()Z
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2955
    array-length v4, p2

    .line 2956
    .local v4, size:I
    const/4 v0, 0x0

    .line 2957
    .local v0, completed:I
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v1

    .line 2958
    .local v1, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2960
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2961
    :try_start_0
    aget-object v5, p2, v2

    if-eqz v5, :cond_0

    .line 2963
    aget-object v5, p2, v2

    invoke-virtual {p0, p1, v5}, Lcom/htc/android/mail/MailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 2964
    .local v3, result:Landroid/net/Uri;
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 2965
    if-eqz v3, :cond_0

    .line 2966
    add-int/lit8 v0, v0, 0x1

    .line 2960
    .end local v3           #result:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2970
    :cond_1
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2974
    return v0

    .line 2972
    :catchall_0
    move-exception v5

    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .parameter "method"
    .parameter "request"
    .parameter "args"

    .prologue
    .line 7008
    const-string v10, "GET_ACCOUNT"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7009
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 7010
    .local v3, accountPool:Lcom/htc/android/mail/AccountPool;
    const-string v10, "accountId"

    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 7011
    .local v1, accountId:J
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 7012
    .local v0, account:Lcom/htc/android/mail/Account;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7013
    .local v5, bundle:Landroid/os/Bundle;
    const-string v10, "account"

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7041
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accountId:J
    .end local v3           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 7015
    :cond_0
    const-string v10, "GET_ACCOUNTS"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7016
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 7017
    .restart local v3       #accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 7018
    .local v4, accounts:[Lcom/htc/android/mail/Account;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7019
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v10, "accounts"

    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 7021
    .end local v3           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v4           #accounts:[Lcom/htc/android/mail/Account;
    .end local v5           #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v10, "GET_ACCOUNT_COUNT"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 7022
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 7023
    .restart local v3       #accountPool:Lcom/htc/android/mail/AccountPool;
    const-string v10, "type"

    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 7024
    .local v8, type:I
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10, v8}, Lcom/htc/android/mail/AccountPool;->getAccountCount(Landroid/content/Context;I)I

    move-result v6

    .line 7025
    .local v6, count:I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7026
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v10, "accountCount"

    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 7028
    .end local v3           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v6           #count:I
    .end local v8           #type:I
    :cond_2
    const-string v10, "CONTAINS_EXCHANGE"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 7029
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 7030
    .restart local v3       #accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/AccountPool;->containsExchange(Landroid/content/Context;)Z

    move-result v7

    .line 7031
    .local v7, exists:Z
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7032
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v10, "exists"

    invoke-virtual {v5, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 7034
    .end local v3           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v7           #exists:Z
    :cond_3
    const-string v10, "GET_EXCHANGE_LARGEST_PROTOCOL"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 7035
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v3

    .line 7036
    .restart local v3       #accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/AccountPool;->getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 7037
    .local v9, version:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7038
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v10, "version"

    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7041
    .end local v3           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #version:Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 52
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 3341
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    :cond_0
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v42

    .line 3343
    .local v42, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 3344
    .local v28, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v4

    .line 3346
    .local v4, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    const/4 v5, 0x2

    move/from16 v0, v42

    if-ne v0, v5, :cond_6

    .line 3347
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3348
    .local v48, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v48, v5

    if-gtz v5, :cond_2

    .line 3349
    const/16 v27, 0x0

    .line 3711
    .end local v48           #rowId:J
    :cond_1
    :goto_0
    return v27

    .line 3353
    .restart local v48       #rowId:J
    :cond_2
    const/16 v30, 0x1

    .line 3354
    .local v30, delAttachment:Z
    const-string v5, "delAttachment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3355
    .local v31, delParam:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3356
    const/16 v30, 0x0

    .line 3359
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->deleteMessageParts(JZ)I

    .line 3361
    const-string v5, "messages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v43

    .line 3363
    .local v43, messageCount:I
    if-lez v43, :cond_4

    .line 3364
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3365
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3366
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3367
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3370
    :cond_4
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match == MESSAGE_ID>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move/from16 v27, v43

    .line 3371
    goto/16 :goto_0

    .line 3373
    .end local v30           #delAttachment:Z
    .end local v31           #delParam:Ljava/lang/String;
    .end local v43           #messageCount:I
    .end local v48           #rowId:J
    :cond_6
    const/16 v5, 0x2e

    move/from16 v0, v42

    if-ne v0, v5, :cond_9

    .line 3374
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3375
    .restart local v48       #rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v48, v5

    if-gtz v5, :cond_7

    .line 3376
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3378
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->deleteMessageParts(JZ)I

    .line 3380
    const-string v5, "messages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v43

    .line 3382
    .restart local v43       #messageCount:I
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3383
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match == MESSAGE_ID>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move/from16 v27, v43

    .line 3384
    goto/16 :goto_0

    .line 3386
    .end local v43           #messageCount:I
    .end local v48           #rowId:J
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v42

    if-ne v0, v5, :cond_e

    .line 3387
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from messages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3388
    .local v7, str:Ljava/lang/String;
    const/16 v25, 0x0

    .line 3390
    .local v25, c:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "parts"

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3391
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3393
    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_a

    .line 3394
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3397
    :cond_a
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v43

    .line 3399
    .restart local v43       #messageCount:I
    if-lez v43, :cond_b

    .line 3400
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3401
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3402
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3403
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3406
    :cond_b
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match == MESSAGES>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move/from16 v27, v43

    .line 3407
    goto/16 :goto_0

    .line 3393
    .end local v43           #messageCount:I
    :catchall_0
    move-exception v5

    if-eqz v25, :cond_d

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_d

    .line 3394
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3393
    :cond_d
    throw v5

    .line 3409
    .end local v7           #str:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    :cond_e
    const/16 v5, 0xcb

    move/from16 v0, v42

    if-ne v0, v5, :cond_14

    .line 3410
    const/4 v7, 0x0

    .line 3411
    .restart local v7       #str:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3412
    const-string v7, "_message in (select _id from searchSvrMessages)"

    .line 3416
    :goto_1
    const/16 v25, 0x0

    .line 3418
    .restart local v25       #c:Landroid/database/Cursor;
    :try_start_1
    const-string v5, "searchSvrParts"

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3419
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3421
    if-eqz v25, :cond_f

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    .line 3422
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3425
    :cond_f
    const-string v5, "searchSvrMessages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v43

    .line 3426
    .restart local v43       #messageCount:I
    if-lez v43, :cond_10

    .line 3427
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3428
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3710
    .end local v7           #str:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v43           #messageCount:I
    :cond_10
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE not supported for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    :cond_11
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3414
    .restart local v7       #str:Ljava/lang/String;
    :cond_12
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from searchSvrMessages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 3421
    .restart local v25       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    if-eqz v25, :cond_13

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_13

    .line 3422
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3421
    :cond_13
    throw v5

    .line 3431
    .end local v7           #str:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    :cond_14
    const/16 v5, 0x2d

    move/from16 v0, v42

    if-ne v0, v5, :cond_18

    .line 3432
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from messages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3433
    .restart local v7       #str:Ljava/lang/String;
    const/16 v25, 0x0

    .line 3435
    .restart local v25       #c:Landroid/database/Cursor;
    :try_start_2
    const-string v5, "parts"

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3436
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3438
    if-eqz v25, :cond_15

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_15

    .line 3439
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3442
    :cond_15
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v43

    .line 3443
    .restart local v43       #messageCount:I
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3444
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_16

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match == MESSAGES>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move/from16 v27, v43

    .line 3445
    goto/16 :goto_0

    .line 3438
    .end local v43           #messageCount:I
    :catchall_2
    move-exception v5

    if-eqz v25, :cond_17

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_17

    .line 3439
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3438
    :cond_17
    throw v5

    .line 3447
    .end local v7           #str:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    :cond_18
    const/4 v5, 0x6

    move/from16 v0, v42

    if-ne v0, v5, :cond_1f

    .line 3448
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc.android.mail.permission.WRITE_ACCOUNT"

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3450
    .restart local v48       #rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v48, v5

    if-gtz v5, :cond_19

    .line 3451
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3453
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6, v8}, Lcom/htc/android/mail/MailProvider;->deleteSyncAcount(Landroid/content/Context;Lcom/htc/android/mail/MailProvider$DatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailProvider;->deleteAccountMessages(J)V

    .line 3457
    const-string v5, "accounts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 3458
    .local v19, accountCount:I
    if-lez v19, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 3461
    :cond_1a
    const-string v5, "content://com.htc.android.mail.MailCarousel"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 3462
    .local v26, carouselUri:Landroid/net/Uri;
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "gId"

    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v26

    .line 3463
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3466
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v23

    .line 3467
    .local v23, accountPool:Lcom/htc/android/mail/AccountPool;
    if-eqz v23, :cond_1b

    .line 3468
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v23

    move-wide/from16 v1, v48

    invoke-virtual {v0, v5, v1, v2}, Lcom/htc/android/mail/AccountPool;->removeAccount(Landroid/content/Context;J)V

    .line 3471
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v10, -0x1

    move-wide/from16 v0, v48

    invoke-static {v5, v0, v1, v10, v11}, Lcom/htc/android/mail/Util;->writeAccountLastAccessMailboxIdToPref(Landroid/content/Context;JJ)V

    .line 3473
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3474
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_1c

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match == ACCOUNT_ID>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 3479
    new-instance v51, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct/range {v51 .. v51}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 3480
    .local v51, uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_1e

    .line 3482
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/ulog/MULogMgr;->setAlarm(Landroid/content/Context;Z)V

    .line 3483
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/ulog/MULogMgr;->cleanMailCountRecords(Landroid/content/Context;)V

    .line 3488
    :goto_2
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_1d

    const-string v5, "MailProvider"

    const-string v6, "[ATS][com.htc.android.mail][delete_account][successful]"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    move/from16 v27, v19

    .line 3489
    goto/16 :goto_0

    .line 3486
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v51

    move-wide/from16 v1, v48

    invoke-virtual {v0, v5, v1, v2}, Lcom/htc/android/mail/ulog/MULogMgr;->deleteMailCountRecord(Landroid/content/Context;J)V

    goto :goto_2

    .line 3491
    .end local v19           #accountCount:I
    .end local v23           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v26           #carouselUri:Landroid/net/Uri;
    .end local v48           #rowId:J
    .end local v51           #uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    :cond_1f
    const/16 v5, 0x1f

    move/from16 v0, v42

    if-ne v0, v5, :cond_20

    .line 3492
    const-string v5, "easTracking"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .line 3494
    .local v35, infoCount:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v27, v35

    .line 3496
    goto/16 :goto_0

    .line 3498
    .end local v35           #infoCount:I
    :cond_20
    const/16 v5, 0x20

    move/from16 v0, v42

    if-ne v0, v5, :cond_22

    .line 3499
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3500
    .restart local v48       #rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v48, v5

    if-gtz v5, :cond_21

    .line 3501
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3503
    :cond_21
    const-string v5, "easTracking"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3505
    .local v27, count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3509
    .end local v27           #count:I
    .end local v48           #rowId:J
    :cond_22
    const/16 v5, 0x18

    move/from16 v0, v42

    if-ne v0, v5, :cond_24

    .line 3510
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_23

    const-string v5, "MailProvider"

    const-string v6, "delete mailbox"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    :cond_23
    const-string v5, "mailboxs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .line 3513
    .restart local v35       #infoCount:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v27, v35

    .line 3515
    goto/16 :goto_0

    .line 3517
    .end local v35           #infoCount:I
    :cond_24
    const/16 v5, 0x2c

    move/from16 v0, v42

    if-ne v0, v5, :cond_26

    .line 3518
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3519
    .restart local v48       #rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v48, v5

    if-gtz v5, :cond_25

    .line 3520
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3522
    :cond_25
    const-string v5, "mailboxs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3524
    .restart local v27       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3526
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete mailbox: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3529
    .end local v27           #count:I
    .end local v48           #rowId:J
    :cond_26
    const/16 v5, 0x26

    move/from16 v0, v42

    if-ne v0, v5, :cond_27

    .line 3530
    const-string v5, "pending_requests"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .line 3531
    .restart local v35       #infoCount:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v27, v35

    .line 3532
    goto/16 :goto_0

    .line 3534
    .end local v35           #infoCount:I
    :cond_27
    const/16 v5, 0x8

    move/from16 v0, v42

    if-ne v0, v5, :cond_28

    .line 3535
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3536
    .restart local v48       #rowId:J
    const-string v5, "_id"

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Ljava/lang/String;J)V

    .line 3537
    const-string v5, "parts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_0

    .line 3539
    .end local v48           #rowId:J
    :cond_28
    const/4 v5, 0x7

    move/from16 v0, v42

    if-ne v0, v5, :cond_2c

    .line 3540
    const/16 v25, 0x0

    .line 3542
    .restart local v25       #c:Landroid/database/Cursor;
    :try_start_3
    const-string v9, "parts"

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v15}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3543
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3547
    if-eqz v25, :cond_29

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_29

    .line 3548
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3551
    :cond_29
    const-string v5, "parts"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_0

    .line 3544
    :catch_0
    move-exception v32

    .line 3545
    .local v32, e:Ljava/lang/Exception;
    :try_start_4
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_2a

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete part() Exceptione: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3547
    :cond_2a
    if-eqz v25, :cond_29

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_3

    .end local v32           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    if-eqz v25, :cond_2b

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 3548
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3547
    :cond_2b
    throw v5

    .line 3552
    .end local v25           #c:Landroid/database/Cursor;
    :cond_2c
    const/16 v5, 0xcd

    move/from16 v0, v42

    if-ne v0, v5, :cond_2f

    .line 3553
    const/16 v25, 0x0

    .line 3555
    .restart local v25       #c:Landroid/database/Cursor;
    :try_start_5
    const-string v9, "searchSvrParts"

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v15}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3556
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 3560
    if-eqz v25, :cond_2d

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 3561
    :goto_4
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3565
    :cond_2d
    const-string v5, "searchSvrParts"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_0

    .line 3557
    :catch_1
    move-exception v32

    .line 3558
    .restart local v32       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 3560
    if-eqz v25, :cond_2d

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_4

    .end local v32           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v5

    if-eqz v25, :cond_2e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 3561
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3560
    :cond_2e
    throw v5

    .line 3566
    .end local v25           #c:Landroid/database/Cursor;
    :cond_2f
    const/16 v5, 0x2b

    move/from16 v0, v42

    if-ne v0, v5, :cond_30

    .line 3568
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3569
    .restart local v48       #rowId:J
    const-string v5, "notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v48

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .line 3570
    .restart local v35       #infoCount:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v27, v35

    .line 3571
    goto/16 :goto_0

    .line 3572
    .end local v35           #infoCount:I
    .end local v48           #rowId:J
    :cond_30
    const/16 v5, 0x190

    move/from16 v0, v42

    if-ne v0, v5, :cond_38

    .line 3573
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v33

    .line 3574
    .local v33, id:J
    const-wide/16 v44, -0x1

    .local v44, messageId:J
    const-wide/16 v20, -0x1

    .local v20, accountId:J
    const-wide/16 v39, -0x1

    .line 3576
    .local v39, mailboxId:J
    const-string v5, "accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3577
    .local v22, accountIdStr:Ljava/lang/String;
    const-string v5, "mailboxId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 3578
    .local v41, mailboxIdStr:Ljava/lang/String;
    const/16 v50, 0x0

    .line 3580
    .local v50, uid:Ljava/lang/String;
    if-eqz v22, :cond_31

    if-nez v41, :cond_34

    .line 3581
    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/messages/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v33

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3582
    .local v9, messageuri:Landroid/net/Uri;
    const/4 v5, 0x4

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "_uid"

    aput-object v6, v10, v5

    const/4 v5, 0x2

    const-string v6, "_account"

    aput-object v6, v10, v5

    const/4 v5, 0x3

    const-string v6, "_mailboxId"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v28

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 3583
    .local v29, cursor:Landroid/database/Cursor;
    if-nez v29, :cond_32

    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3584
    :cond_32
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_33

    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3585
    :cond_33
    const-string v5, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 3586
    const-string v5, "_account"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 3587
    const-string v5, "_mailboxId"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 3588
    const-string v5, "_uid"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 3590
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 3601
    .end local v9           #messageuri:Landroid/net/Uri;
    .end local v29           #cursor:Landroid/database/Cursor;
    :goto_5
    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v18

    .line 3602
    .local v18, account:Lcom/htc/android/mail/Account;
    if-nez v18, :cond_35

    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3592
    .end local v18           #account:Lcom/htc/android/mail/Account;
    :cond_34
    move-wide/from16 v44, v33

    .line 3594
    :try_start_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 3595
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-wide v39

    goto :goto_5

    .line 3596
    :catch_2
    move-exception v32

    .line 3597
    .local v32, e:Ljava/lang/NumberFormatException;
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 3604
    .end local v32           #e:Ljava/lang/NumberFormatException;
    .restart local v18       #account:Lcom/htc/android/mail/Account;
    :cond_35
    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    move-wide/from16 v0, v39

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v38

    .line 3606
    .local v38, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v46, Lcom/htc/android/mail/Request;

    invoke-direct/range {v46 .. v46}, Lcom/htc/android/mail/Request;-><init>()V

    .line 3607
    .local v46, r:Lcom/htc/android/mail/Request;
    const/4 v5, 0x4

    move-object/from16 v0, v46

    iput v5, v0, Lcom/htc/android/mail/Request;->command:I

    .line 3609
    new-instance v37, Lcom/htc/android/mail/MailMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v37

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 3610
    .local v37, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 3611
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 3612
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_36

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete uid: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    :cond_36
    move-object/from16 v0, v50

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 3616
    :cond_37
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 3617
    .local v24, b:Landroid/os/Bundle;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 3618
    .local v36, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3619
    const-string v5, "Mailbox"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3620
    const-string v5, "MailMessageList"

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3621
    move-object/from16 v0, v24

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 3622
    move-object/from16 v0, v46

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 3624
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v47

    .line 3625
    .local v47, requestController:Lcom/htc/android/mail/AbsRequestController;
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/RequestController;->deleteMail(Lcom/htc/android/mail/Request;)V

    .line 3626
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 3627
    .end local v18           #account:Lcom/htc/android/mail/Account;
    .end local v20           #accountId:J
    .end local v22           #accountIdStr:Ljava/lang/String;
    .end local v24           #b:Landroid/os/Bundle;
    .end local v33           #id:J
    .end local v36           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v37           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v38           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v39           #mailboxId:J
    .end local v41           #mailboxIdStr:Ljava/lang/String;
    .end local v44           #messageId:J
    .end local v46           #r:Lcom/htc/android/mail/Request;
    .end local v47           #requestController:Lcom/htc/android/mail/AbsRequestController;
    .end local v50           #uid:Ljava/lang/String;
    :cond_38
    const/16 v5, 0x33

    move/from16 v0, v42

    if-ne v0, v5, :cond_39

    .line 3628
    const-string v5, "email_history"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .restart local v35       #infoCount:I
    move/from16 v27, v35

    .line 3629
    goto/16 :goto_0

    .line 3630
    .end local v35           #infoCount:I
    :cond_39
    const/16 v5, 0x132

    move/from16 v0, v42

    if-eq v0, v5, :cond_3a

    const/16 v5, 0x133

    move/from16 v0, v42

    if-ne v0, v5, :cond_40

    .line 3631
    :cond_3a
    const/16 v5, 0x133

    move/from16 v0, v42

    if-ne v0, v5, :cond_3b

    .line 3632
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v48

    .line 3633
    .restart local v48       #rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->whereWithId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3637
    .end local v48           #rowId:J
    :cond_3b
    const/16 v30, 0x1

    .line 3638
    .restart local v30       #delAttachment:Z
    const-string v5, "delAttachment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3639
    .restart local v31       #delParam:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 3640
    const/16 v30, 0x0

    .line 3643
    :cond_3c
    if-eqz v30, :cond_3d

    .line 3644
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from messages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3645
    .restart local v7       #str:Ljava/lang/String;
    const/16 v25, 0x0

    .line 3647
    .restart local v25       #c:Landroid/database/Cursor;
    :try_start_8
    const-string v11, "parts"

    sget-object v12, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v4

    move-object v13, v7

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v17}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3648
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 3650
    if-eqz v25, :cond_3d

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 3651
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3655
    .end local v7           #str:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    :cond_3d
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from messages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3656
    .restart local v7       #str:Ljava/lang/String;
    const-string v5, "parts"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3658
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3660
    .restart local v27       #count:I
    if-lez v27, :cond_3e

    .line 3661
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3662
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3663
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3665
    :cond_3e
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE > match: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", count:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3650
    .end local v27           #count:I
    .restart local v25       #c:Landroid/database/Cursor;
    :catchall_5
    move-exception v5

    if-eqz v25, :cond_3f

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 3651
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3650
    :cond_3f
    throw v5

    .line 3668
    .end local v7           #str:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v30           #delAttachment:Z
    .end local v31           #delParam:Ljava/lang/String;
    :cond_40
    const/16 v5, 0x258

    move/from16 v0, v42

    if-ne v0, v5, :cond_41

    .line 3669
    const-string v5, "people_db.groups"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3670
    .restart local v27       #count:I
    if-lez v27, :cond_1

    .line 3671
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3674
    .end local v27           #count:I
    :cond_41
    const/16 v5, 0x259

    move/from16 v0, v42

    if-ne v0, v5, :cond_42

    .line 3675
    const-string v5, "people_db.data"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3676
    .restart local v27       #count:I
    if-lez v27, :cond_1

    .line 3677
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3680
    .end local v27           #count:I
    :cond_42
    const/16 v5, 0xf

    move/from16 v0, v42

    if-ne v0, v5, :cond_43

    .line 3681
    const-string v5, "providers"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3682
    .restart local v27       #count:I
    if-lez v27, :cond_1

    .line 3683
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3686
    .end local v27           #count:I
    :cond_43
    const/16 v5, 0x24

    move/from16 v0, v42

    if-ne v0, v5, :cond_44

    .line 3687
    const-string v5, "providersettings"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3688
    .restart local v27       #count:I
    if-lez v27, :cond_1

    .line 3689
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3692
    .end local v27           #count:I
    :cond_44
    const/16 v5, 0x2710

    move/from16 v0, v42

    if-ne v0, v5, :cond_45

    .line 3693
    const-string v5, "tags"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3694
    .restart local v27       #count:I
    if-lez v27, :cond_1

    .line 3695
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3696
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3697
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3700
    .end local v27           #count:I
    :cond_45
    const/16 v5, 0x2711

    move/from16 v0, v42

    if-ne v0, v5, :cond_10

    .line 3701
    const-string v5, "messages_tags_relation"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3702
    .restart local v27       #count:I
    if-lez v27, :cond_1

    .line 3703
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3704
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3705
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 2906
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2907
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 2948
    sget-boolean v1, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailProvider"

    const-string v2, "gettype:Unknown URI"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 2909
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/mail"

    goto :goto_0

    .line 2912
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/mail"

    goto :goto_0

    .line 2914
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/mail-summary"

    goto :goto_0

    .line 2916
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/mail-summary"

    goto :goto_0

    .line 2918
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/mail-account"

    goto :goto_0

    .line 2920
    :sswitch_5
    const-string v1, "vnd.android.cursor.item/mail-account"

    goto :goto_0

    .line 2922
    :sswitch_6
    const-string v1, "vnd.android.cursor.dir/mail-provider"

    goto :goto_0

    .line 2924
    :sswitch_7
    const-string v1, "vnd.android.cursor.item/mail-provider"

    goto :goto_0

    .line 2926
    :sswitch_8
    const-string v1, "vnd.android.cursor.dir/mail-part"

    goto :goto_0

    .line 2932
    :sswitch_9
    const-string v1, "vnd.android.cursor.dir/mail-box"

    goto :goto_0

    .line 2934
    :sswitch_a
    const-string v1, "vnd.android.cursor.item/mail-box"

    goto :goto_0

    .line 2936
    :sswitch_b
    const-string v1, "vnd.android.cursor.dir/mail-tracking"

    goto :goto_0

    .line 2938
    :sswitch_c
    const-string v1, "vnd.android.cursor.item/mail-tracking"

    goto :goto_0

    .line 2940
    :sswitch_d
    const-string v1, "content://mail/AccountVerify"

    goto :goto_0

    .line 2943
    :sswitch_e
    const-string v1, "vnd.android.cursor.item/email-history"

    goto :goto_0

    .line 2907
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0xf -> :sswitch_6
        0x10 -> :sswitch_7
        0x18 -> :sswitch_9
        0x1f -> :sswitch_b
        0x20 -> :sswitch_c
        0x2c -> :sswitch_a
        0x33 -> :sswitch_e
        0x34 -> :sswitch_e
        0xc8 -> :sswitch_d
        0xcc -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 3035
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 3036
    .local v13, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 3037
    .local v9, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v10

    .line 3039
    .local v10, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "MailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "insert: "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_0
    const/4 v2, 0x1

    if-ne v13, v2, :cond_4

    .line 3045
    if-nez p2, :cond_2

    .line 3046
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3047
    .local v6, values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3055
    :goto_0
    const-string v2, "messages"

    const-string v3, "_subject"

    invoke-virtual {v10, v2, v3, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3056
    .local v4, rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3058
    .local v15, result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3059
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3060
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3061
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3336
    .end local v4           #rowId:J
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v15           #result:Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v15

    .line 3048
    :cond_2
    const-string v2, "_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3049
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3050
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 3052
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v6, p2

    .restart local v6       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 3066
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_4
    const/16 v2, 0x15e

    if-ne v13, v2, :cond_7

    .line 3070
    if-nez p2, :cond_5

    .line 3071
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3072
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3080
    :goto_2
    const-string v2, "messages"

    const-string v3, "_subject"

    invoke-virtual {v10, v2, v3, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3081
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3083
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3084
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3085
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3086
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3088
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/htc/android/mail/MailProvider;->notifyCombinedAccountAndMailbox(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 3073
    .end local v4           #rowId:J
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v15           #result:Landroid/net/Uri;
    :cond_5
    const-string v2, "_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3074
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3075
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 3077
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v6, p2

    .restart local v6       #values:Landroid/content/ContentValues;
    goto :goto_2

    .line 3093
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_7
    const/16 v2, 0xcb

    if-ne v13, v2, :cond_a

    .line 3097
    if-nez p2, :cond_8

    .line 3098
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3099
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3107
    :goto_3
    const-string v2, "searchSvrMessages"

    const-string v3, "_subject"

    invoke-virtual {v10, v2, v3, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3108
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/searchSvrMessages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3110
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3111
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3100
    .end local v4           #rowId:J
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v15           #result:Landroid/net/Uri;
    :cond_8
    const-string v2, "_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3101
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3102
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 3104
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v6, p2

    .restart local v6       #values:Landroid/content/ContentValues;
    goto :goto_3

    .line 3115
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_a
    const/16 v2, 0x2d

    if-ne v13, v2, :cond_d

    .line 3119
    if-nez p2, :cond_b

    .line 3120
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3121
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3129
    :goto_4
    const-string v2, "messages"

    const-string v3, "_subject"

    invoke-virtual {v10, v2, v3, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3130
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3132
    .restart local v15       #result:Landroid/net/Uri;
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3122
    .end local v4           #rowId:J
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v15           #result:Landroid/net/Uri;
    :cond_b
    const-string v2, "_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3123
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3124
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 3126
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v6, p2

    .restart local v6       #values:Landroid/content/ContentValues;
    goto :goto_4

    .line 3136
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_d
    const/4 v2, 0x5

    if-ne v13, v2, :cond_13

    .line 3137
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "MailProvider"

    const-string v3, "accounts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.htc.android.mail.permission.WRITE_ACCOUNT"

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3147
    const-string v2, "_provider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3150
    .local v14, provider:Ljava/lang/String;
    if-eqz v14, :cond_f

    const-string v2, "Exchange"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3151
    const-string v2, "_peakonfrequency"

    sget-object v3, Lcom/htc/android/mail/MailProvider;->EASsyncSchedulePeakOn:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3152
    const-string v2, "_peakofffrequency"

    sget-object v3, Lcom/htc/android/mail/MailProvider;->EASsyncSchedulePeakOff:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3157
    .end local v14           #provider:Ljava/lang/String;
    :cond_f
    const-string v2, "_providerGroup"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/htc/android/mail/MailProvider;->getAccountEncodedColorIdx(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;Ljava/lang/String;)I

    move-result v8

    .line 3158
    .local v8, colorIdx:I
    const-string v2, "_colorIdx"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3159
    new-instance v11, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3160
    .local v11, encValues:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/htc/android/mail/MailProvider;->encInformationifNeed(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3161
    const-string v2, "accounts"

    const-string v3, "_username"

    invoke-virtual {v10, v2, v3, v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3162
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/accounts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3164
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3165
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 3167
    const-string v2, "_protocol"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3168
    .local v7, protocol:I
    const/4 v2, 0x4

    if-eq v7, v2, :cond_11

    const/16 v2, 0xa

    if-eq v7, v2, :cond_11

    .line 3169
    move-object/from16 v6, p2

    .line 3170
    .restart local v6       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 3171
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-nez v12, :cond_10

    .line 3172
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3173
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailProvider;->mAfterCommitRunnable:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3176
    :cond_10
    new-instance v2, Lcom/htc/android/mail/MailProvider$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/android/mail/MailProvider$1;-><init>(Lcom/htc/android/mail/MailProvider;JLandroid/content/ContentValues;I)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v16

    .line 3190
    .local v16, totalAccountNumber:I
    new-instance v17, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 3192
    .local v17, uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_12

    .line 3193
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/ulog/MULogMgr;->setAlarm(Landroid/content/Context;Z)V

    .line 3196
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/htc/android/mail/AccountPool;->getAccountCount(Landroid/content/Context;I)I

    move-result v2

    sub-int v2, v16, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3197
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Lcom/htc/android/mail/ulog/MULogMgr;->manageShowMeLog(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 3202
    .end local v4           #rowId:J
    .end local v7           #protocol:I
    .end local v8           #colorIdx:I
    .end local v11           #encValues:Landroid/content/ContentValues;
    .end local v15           #result:Landroid/net/Uri;
    .end local v16           #totalAccountNumber:I
    .end local v17           #uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    :cond_13
    const/16 v2, 0x71

    if-ne v13, v2, :cond_15

    .line 3203
    const-string v2, "globalSetting"

    const-string v3, "_glancePreview"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3204
    .restart local v4       #rowId:J
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string v2, "MailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "GLOBAL_SETTING_MAIL<"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    :cond_14
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/globalSetting/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3207
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3211
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_15
    const/4 v2, 0x7

    if-ne v13, v2, :cond_16

    .line 3212
    const-string v2, "parts"

    const-string v3, "_mimetype"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3213
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/partsMsgId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3215
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3220
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_16
    const/16 v2, 0xcd

    if-ne v13, v2, :cond_17

    .line 3221
    const-string v2, "searchSvrParts"

    const-string v3, "_mimetype"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3222
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/partsMsgId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3224
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3225
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3230
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_17
    const/16 v2, 0xd

    if-ne v13, v2, :cond_19

    .line 3231
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_18

    const-string v2, "MailProvider"

    const-string v3, "iparts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_18
    const-string v2, "iparts"

    const-string v3, "_mimetype"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3233
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/iparts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3236
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3241
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_19
    const/16 v2, 0x1f

    if-ne v13, v2, :cond_1d

    .line 3242
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_1a

    const-string v2, "MailProvider"

    const-string v3, "easTracking"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    :cond_1a
    const-string v2, "easTracking"

    const-string v3, "_message"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3244
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1b

    .line 3245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/easTracking/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3246
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3251
    .end local v15           #result:Landroid/net/Uri;
    :cond_1b
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_1c

    const-string v2, "MailProvider"

    const-string v3, "insert easTracking table fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    .end local v4           #rowId:J
    :cond_1c
    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 3254
    :cond_1d
    const/16 v2, 0x18

    if-ne v13, v2, :cond_1f

    .line 3255
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string v2, "MailProvider"

    const-string v3, "mailboxs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_1e
    const-string v2, "mailboxs"

    const-string v3, "_accountid"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3258
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/mailboxs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3261
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3266
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_1f
    const/16 v2, 0x26

    if-ne v13, v2, :cond_20

    .line 3267
    const-string v2, "pending_requests"

    const-string v3, "_accountId"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3269
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/pending_requests/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3271
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3275
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_20
    const/16 v2, 0x2a

    if-ne v13, v2, :cond_23

    .line 3276
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string v2, "MailProvider"

    const-string v3, "notification insert"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    :cond_21
    const-string v2, "notification"

    const-string v3, "_title"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3278
    .restart local v4       #rowId:J
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_22

    const-string v2, "MailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "notification insert rowi="

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    :cond_22
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/notification/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3281
    .restart local v15       #result:Landroid/net/Uri;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3282
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    const-string v3, "_accountid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 3283
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 3286
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_23
    const/16 v2, 0x33

    if-ne v13, v2, :cond_24

    .line 3287
    const-string v2, "email_history"

    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3288
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/email_history/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3291
    .restart local v15       #result:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3293
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_24
    const/16 v2, 0x258

    if-ne v13, v2, :cond_25

    .line 3294
    const-string v2, "people_db.groups"

    const-string v3, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3295
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3296
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3297
    .restart local v15       #result:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3299
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_25
    const/16 v2, 0x259

    if-ne v13, v2, :cond_26

    .line 3300
    const-string v2, "people_db.data"

    const-string v3, "_id"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 3302
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3303
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3304
    .restart local v15       #result:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3306
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_26
    const/16 v2, 0xf

    if-ne v13, v2, :cond_27

    .line 3307
    const-string v2, "providers"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3308
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/providers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3310
    .restart local v15       #result:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3312
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_27
    const/16 v2, 0x24

    if-ne v13, v2, :cond_28

    .line 3313
    const-string v2, "providersettings"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3314
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/providersettings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3316
    .restart local v15       #result:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3318
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_28
    const/16 v2, 0x2710

    if-ne v13, v2, :cond_29

    .line 3319
    const-string v2, "tags"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3320
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/tags/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3322
    .restart local v15       #result:Landroid/net/Uri;
    goto/16 :goto_1

    .line 3324
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_29
    const/16 v2, 0x2711

    if-ne v13, v2, :cond_2a

    .line 3325
    const-string v2, "messages_tags_relation"

    const/4 v3, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 3326
    .restart local v4       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    .line 3327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages_tags_relation/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 3328
    .restart local v15       #result:Landroid/net/Uri;
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3329
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 3333
    .end local v4           #rowId:J
    .end local v15           #result:Landroid/net/Uri;
    :cond_2a
    sget-boolean v2, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v2, :cond_1c

    const-string v2, "MailProvider"

    const-string v3, "insert(): Can\'t find table"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2020
    .local v0, c:Landroid/content/Context;
    sput-object p0, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    .line 2022
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 2024
    invoke-static {v0}, Lcom/htc/android/mail/AccountPool;->initAccountPoolInIntentService(Landroid/content/Context;)V

    .line 2030
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 15
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6350
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 6351
    .local v12, match:I
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> openFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6352
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v1

    .line 6355
    .local v1, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    sparse-switch v12, :sswitch_data_0

    .line 6363
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailProvider"

    const-string v6, "default"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6364
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 6393
    :cond_2
    :goto_0
    return-object v3

    .line 6357
    :sswitch_0
    const-string v2, "parts"

    .line 6367
    .local v2, table:Ljava/lang/String;
    :goto_1
    const-string v3, "r"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6368
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad mode for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6360
    .end local v2           #table:Ljava/lang/String;
    :sswitch_1
    const-string v2, "searchSvrParts"

    .line 6361
    .restart local v2       #table:Ljava/lang/String;
    goto :goto_1

    .line 6371
    :cond_3
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "table: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6373
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 6375
    .local v13, partsId:J
    const-string v4, "_id = ?"

    .line 6376
    .local v4, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 6377
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 6379
    .local v9, c:Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_filepath"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6380
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6381
    const-string v3, "_filepath"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6382
    .local v11, filePath:Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 6383
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x1000

    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 6389
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6390
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6386
    .end local v11           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 6387
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6389
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6390
    .end local v10           #e:Ljava/lang/Exception;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6393
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto/16 :goto_0

    .line 6389
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 6390
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6389
    :cond_6
    throw v3

    :cond_7
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 6355
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xce -> :sswitch_1
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 100
    .parameter "uri"
    .parameter "columns"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 2036
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v63

    .line 2037
    .local v63, match:I
    const/16 v93, 0x0

    .line 2038
    .local v93, table:Ljava/lang/String;
    const/16 v69, 0x0

    .line 2039
    .local v69, notifyURI:Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v9

    .line 2042
    .local v9, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2044
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sparse-switch v63, :sswitch_data_0

    .line 2883
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkonw URI - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    :cond_0
    const/16 v40, 0x0

    move-object/from16 v10, v93

    .line 2900
    .end local v9           #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .end local v93           #table:Ljava/lang/String;
    .local v10, table:Ljava/lang/String;
    :goto_0
    return-object v40

    .line 2046
    .end local v10           #table:Ljava/lang/String;
    .restart local v9       #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_0
    const-string v10, "messages"

    .line 2047
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 2887
    :goto_1
    const/16 v3, 0x11

    move/from16 v0, v63

    if-eq v0, v3, :cond_1

    const/16 v3, 0x12

    move/from16 v0, v63

    if-eq v0, v3, :cond_1

    const/16 v3, 0x13

    move/from16 v0, v63

    if-ne v0, v3, :cond_42

    .line 2890
    :cond_1
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v24, p5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 2891
    .local v36, cc:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v40, v36

    .line 2892
    goto :goto_0

    .line 2051
    .end local v10           #table:Ljava/lang/String;
    .end local v36           #cc:Landroid/database/Cursor;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1
    const-string v10, "messages"

    .line 2052
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2053
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 2054
    goto :goto_1

    .line 2057
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_2
    const-string v10, "searchSvrMessages"

    .line 2058
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 2059
    goto :goto_1

    .line 2062
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_3
    const-string v10, "searchSvrMessages"

    .line 2063
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2064
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 2065
    goto :goto_1

    .line 2067
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_4
    const-string v10, "messages"

    .line 2068
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 2069
    sget-object p2, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    .line 2071
    :cond_2
    move-object/from16 v69, p1

    .line 2072
    goto :goto_1

    .line 2076
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_5
    const-string v10, "messages"

    .line 2077
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 2078
    sget-object p2, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    .line 2080
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider;->getWhereForSummariesWithMailbox(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v94

    .line 2081
    .local v94, tmpWhere:Ljava/lang/String;
    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2083
    const-string v3, "extraWhere"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2084
    .local v44, extraWhere:Ljava/lang/String;
    if-eqz v44, :cond_4

    .line 2085
    if-eqz p3, :cond_4

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2089
    :cond_4
    const/16 v3, 0x163

    move/from16 v0, v63

    if-ne v0, v3, :cond_5

    .line 2090
    const-string v3, "readSeq"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 2091
    .local v79, readSeq:Ljava/lang/String;
    if-eqz v79, :cond_5

    .line 2092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR (messages._read = 1 AND messages._id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2095
    .end local v79           #readSeq:Ljava/lang/String;
    :cond_5
    move-object/from16 v69, p1

    .line 2096
    goto/16 :goto_1

    .line 2099
    .end local v10           #table:Ljava/lang/String;
    .end local v44           #extraWhere:Ljava/lang/String;
    .end local v94           #tmpWhere:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_6
    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2100
    const-string v7, "_account, _group"

    .line 2101
    .local v7, group:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider;->getWhereForSummariesWithMailbox(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v94

    .line 2102
    .restart local v94       #tmpWhere:Ljava/lang/String;
    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2104
    const-string v3, "extraWhere"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2105
    .restart local v44       #extraWhere:Ljava/lang/String;
    if-eqz v44, :cond_6

    .line 2106
    if-eqz p3, :cond_6

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2110
    :cond_6
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v9           #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    move-result-object v40

    .line 2111
    .local v40, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v10, v93

    .line 2112
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2115
    .end local v7           #group:Ljava/lang/String;
    .end local v10           #table:Ljava/lang/String;
    .end local v40           #cursor:Landroid/database/Cursor;
    .end local v44           #extraWhere:Ljava/lang/String;
    .end local v94           #tmpWhere:Ljava/lang/String;
    .restart local v9       #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_7
    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2116
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider;->getWhereForSummariesWithMailbox(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v94

    .line 2117
    .restart local v94       #tmpWhere:Ljava/lang/String;
    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2119
    const-string v3, "extraWhere"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2120
    .restart local v44       #extraWhere:Ljava/lang/String;
    if-eqz v44, :cond_7

    .line 2121
    if-eqz p3, :cond_7

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2126
    :cond_7
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .end local v9           #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 2127
    .restart local v40       #cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v10, v93

    .line 2128
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2131
    .end local v10           #table:Ljava/lang/String;
    .end local v40           #cursor:Landroid/database/Cursor;
    .end local v44           #extraWhere:Ljava/lang/String;
    .end local v94           #tmpWhere:Ljava/lang/String;
    .restart local v9       #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_8
    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2132
    const-string v7, "_account, _group"

    .line 2133
    .restart local v7       #group:Ljava/lang/String;
    const-string v8, "count(*) > 1"

    .line 2134
    .local v8, having:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider;->getWhereForSummariesWithMailbox(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v94

    .line 2135
    .restart local v94       #tmpWhere:Ljava/lang/String;
    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2137
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v9           #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    move-result-object v40

    .restart local v40       #cursor:Landroid/database/Cursor;
    move-object/from16 v10, v93

    .line 2138
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2141
    .end local v7           #group:Ljava/lang/String;
    .end local v8           #having:Ljava/lang/String;
    .end local v10           #table:Ljava/lang/String;
    .end local v40           #cursor:Landroid/database/Cursor;
    .end local v94           #tmpWhere:Ljava/lang/String;
    .restart local v9       #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v59

    .line 2143
    .local v59, mailboxId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "people_db.groups LEFT JOIN people_db.data ON (people_db.groups._id = people_db.data.group_id) LEFT JOIN messages ON (messages._fromEmail = people_db.data.data AND messages._del = -1 AND messages._mailboxId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v59

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2150
    const-string p3, "people_db.groups.sortorder >= 0"

    .line 2151
    const-string v3, "extraWhere"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2153
    .restart local v44       #extraWhere:Ljava/lang/String;
    if-eqz v44, :cond_8

    .line 2154
    if-eqz p3, :cond_8

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2159
    :cond_8
    const-string v7, "people_db.groups.title"

    .line 2160
    .restart local v7       #group:Ljava/lang/String;
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v14, v7

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v9           #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    move-result-object v40

    .line 2162
    .restart local v40       #cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v10, v93

    .line 2164
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2170
    .end local v7           #group:Ljava/lang/String;
    .end local v10           #table:Ljava/lang/String;
    .end local v40           #cursor:Landroid/database/Cursor;
    .end local v44           #extraWhere:Ljava/lang/String;
    .end local v59           #mailboxId:J
    .restart local v9       #dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_a
    const-string v10, "messages"

    .line 2171
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object p2, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    .line 2172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2173
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    .line 2174
    goto/16 :goto_1

    .line 2177
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_b
    const-string v10, "searchSvrMessages"

    .line 2178
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    if-nez p2, :cond_9

    .line 2179
    sget-object p2, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    .line 2181
    :cond_9
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 2182
    goto/16 :goto_1

    .line 2185
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_c
    const-string v10, "searchSvrMessages"

    .line 2186
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object p2, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    .line 2187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2188
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 2189
    goto/16 :goto_1

    .line 2192
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_d
    const-string v10, "easTracking"

    .line 2193
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    .line 2194
    goto/16 :goto_1

    .line 2197
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_e
    const-string v10, "easTracking"

    .line 2198
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2199
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    .line 2200
    goto/16 :goto_1

    .line 2204
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_f
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v97

    .line 2205
    .local v97, type:Ljava/lang/String;
    const-string v3, "accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2207
    .local v25, accountId:Ljava/lang/String;
    const/16 v78, 0x0

    .line 2208
    .local v78, queryAllBox:Z
    invoke-static/range {v97 .. v97}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2209
    const-string v3, "all"

    move-object/from16 v0, v97

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2211
    const/16 v78, 0x1

    .line 2220
    :goto_2
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2221
    const-string v3, "MailProvider"

    const-string v4, "meeting msg can\'t get accountId"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const/16 v40, 0x0

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2214
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :cond_a
    const/16 v78, 0x0

    goto :goto_2

    .line 2217
    :cond_b
    const/16 v78, 0x0

    goto :goto_2

    .line 2225
    :cond_c
    const-wide/16 v48, 0x0

    .line 2226
    .local v48, inboxFolderId:J
    const-wide/16 v86, 0x0

    .line 2227
    .local v86, sentFolderId:J
    const-wide/16 v95, 0x0

    .line 2229
    .local v95, trashFolderId:J
    const-string v93, "messages"

    .line 2230
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 2231
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meeting msg, original where: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    :cond_d
    const/16 v68, 0x0

    .line 2235
    .local v68, noIncludeIDs:[Ljava/lang/String;
    const-string v10, "accounts"

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_defaultfolderId"

    aput-object v4, v11, v3

    const/4 v3, 0x1

    const-string v4, "_sentfolderId, _trashfolderId"

    aput-object v4, v11, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 2239
    .local v38, cur:Landroid/database/Cursor;
    if-eqz v38, :cond_e

    :try_start_0
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2240
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v66

    .line 2242
    .local v66, nCnt:I
    if-eqz v66, :cond_10

    .line 2243
    const-string v3, "_defaultfolderId"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 2244
    const-string v3, "_sentfolderId"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v86

    .line 2245
    const-string v3, "_trashfolderId"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v95

    .line 2254
    .end local v66           #nCnt:I
    :cond_e
    if-eqz v38, :cond_f

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2255
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 2259
    :cond_f
    const-string v91, ""

    .line 2260
    .local v91, subWhere:Ljava/lang/String;
    if-eqz v78, :cond_14

    .line 2261
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_mailboxId != \'%s\' AND _mailboxId != \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v95 .. v96}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v91

    .line 2266
    :goto_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_messageClass=\'IPM.Schedule.Meeting.Request\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v91

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2271
    :goto_4
    const-string v3, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meeting msg where: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v93

    .line 2273
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 2247
    .end local v10           #table:Ljava/lang/String;
    .end local v91           #subWhere:Ljava/lang/String;
    .restart local v66       #nCnt:I
    .restart local v93       #table:Ljava/lang/String;
    :cond_10
    const/16 v40, 0x0

    .line 2254
    if-eqz v38, :cond_11

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2255
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    :cond_11
    move-object/from16 v10, v93

    .line 2247
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2250
    .end local v10           #table:Ljava/lang/String;
    .end local v66           #nCnt:I
    .restart local v93       #table:Ljava/lang/String;
    :catch_0
    move-exception v41

    .line 2251
    .local v41, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2252
    const/16 v40, 0x0

    .line 2254
    if-eqz v38, :cond_12

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2255
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object/from16 v10, v93

    .line 2252
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2254
    .end local v10           #table:Ljava/lang/String;
    .end local v41           #e:Ljava/lang/Exception;
    .restart local v93       #table:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v38, :cond_13

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2255
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 2254
    :cond_13
    throw v3

    .line 2263
    .restart local v91       #subWhere:Ljava/lang/String;
    :cond_14
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_mailboxId = \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v91

    goto :goto_3

    .line 2269
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_messageClass=\'IPM.Schedule.Meeting.Request\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v91

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 2276
    .end local v25           #accountId:Ljava/lang/String;
    .end local v38           #cur:Landroid/database/Cursor;
    .end local v48           #inboxFolderId:J
    .end local v68           #noIncludeIDs:[Ljava/lang/String;
    .end local v78           #queryAllBox:Z
    .end local v86           #sentFolderId:J
    .end local v91           #subWhere:Ljava/lang/String;
    .end local v95           #trashFolderId:J
    .end local v97           #type:Ljava/lang/String;
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string v10, "accounts"

    .line 2278
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    .line 2279
    goto/16 :goto_1

    .line 2282
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const-string v10, "accounts"

    .line 2284
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2285
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    .line 2286
    goto/16 :goto_1

    .line 2289
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v10, "accounts"

    .line 2291
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    .line 2293
    if-eqz p2, :cond_19

    .line 2294
    const/16 v50, 0x0

    .line 2295
    .local v50, includeProviderGroup:Z
    const/16 v47, 0x0

    .local v47, i:I
    :goto_5
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v47

    if-ge v0, v3, :cond_17

    .line 2296
    aget-object v3, p2, v47

    const-string v4, "_providerGroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2297
    const/16 v50, 0x1

    .line 2295
    :cond_16
    add-int/lit8 v47, v47, 0x1

    goto :goto_5

    .line 2300
    :cond_17
    if-nez v50, :cond_19

    .line 2301
    move-object/from16 v70, p2

    .line 2302
    .local v70, old:[Ljava/lang/String;
    move-object/from16 v0, v70

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    .line 2303
    const/16 v47, 0x0

    :goto_6
    move-object/from16 v0, v70

    array-length v3, v0

    move/from16 v0, v47

    if-ge v0, v3, :cond_18

    .line 2304
    aget-object v3, v70, v47

    aput-object v3, p2, v47

    .line 2303
    add-int/lit8 v47, v47, 0x1

    goto :goto_6

    .line 2306
    :cond_18
    move-object/from16 v0, v70

    array-length v3, v0

    const-string v4, "_providerGroup"

    aput-object v4, p2, v3

    .line 2310
    .end local v47           #i:I
    .end local v50           #includeProviderGroup:Z
    .end local v70           #old:[Ljava/lang/String;
    :cond_19
    const/16 v43, 0x0

    .line 2311
    .local v43, encAccount:Landroid/database/Cursor;
    const/16 v80, 0x0

    .line 2313
    .local v80, ret:Landroid/database/MatrixCursor;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    :try_start_2
    invoke-virtual/range {v9 .. v16}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 2314
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v82

    .line 2315
    .local v82, retColumns:[Ljava/lang/String;
    new-instance v81, Landroid/database/MatrixCursor;

    invoke-direct/range {v81 .. v82}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2316
    .end local v80           #ret:Landroid/database/MatrixCursor;
    .local v81, ret:Landroid/database/MatrixCursor;
    :try_start_3
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v83, v0

    .line 2317
    .local v83, retValues:[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->getEncryptKey(Landroid/content/Context;)[B

    move-result-object v53

    .line 2318
    .local v53, key:[B
    :goto_7
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2320
    const-string v3, "_providerGroup"

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 2321
    .local v77, providerGroup:Ljava/lang/String;
    const/16 v47, 0x0

    .restart local v47       #i:I
    :goto_8
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, v47

    if-ge v0, v3, :cond_1b

    .line 2322
    aget-object v3, v82, v47

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v83, v47

    .line 2324
    const-string v3, "_emailaddress"

    aget-object v4, v82, v47

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "Yahoo"

    move-object/from16 v0, v77

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2325
    aget-object v3, v83, v47

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-static {v0, v3}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v83, v47

    .line 2321
    :cond_1a
    add-int/lit8 v47, v47, 0x1

    goto :goto_8

    .line 2328
    :cond_1b
    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 2331
    .end local v47           #i:I
    .end local v53           #key:[B
    .end local v77           #providerGroup:Ljava/lang/String;
    .end local v83           #retValues:[Ljava/lang/Object;
    :catchall_1
    move-exception v3

    move-object/from16 v80, v81

    .end local v81           #ret:Landroid/database/MatrixCursor;
    .end local v82           #retColumns:[Ljava/lang/String;
    .restart local v80       #ret:Landroid/database/MatrixCursor;
    :goto_9
    if-eqz v43, :cond_1c

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2332
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 2331
    :cond_1c
    throw v3

    .end local v80           #ret:Landroid/database/MatrixCursor;
    .restart local v53       #key:[B
    .restart local v81       #ret:Landroid/database/MatrixCursor;
    .restart local v82       #retColumns:[Ljava/lang/String;
    .restart local v83       #retValues:[Ljava/lang/Object;
    :cond_1d
    if-eqz v43, :cond_1e

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 2332
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_1e
    move-object/from16 v40, v81

    .line 2335
    goto/16 :goto_0

    .line 2338
    .end local v10           #table:Ljava/lang/String;
    .end local v43           #encAccount:Landroid/database/Cursor;
    .end local v53           #key:[B
    .end local v81           #ret:Landroid/database/MatrixCursor;
    .end local v82           #retColumns:[Ljava/lang/String;
    .end local v83           #retValues:[Ljava/lang/Object;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_13
    const-string v10, "providers"

    .line 2339
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    .line 2340
    goto/16 :goto_1

    .line 2343
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_14
    const-string v10, "providers"

    .line 2344
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2345
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    .line 2346
    goto/16 :goto_1

    .line 2349
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_15
    const-string v10, "parts"

    .line 2350
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 2351
    goto/16 :goto_1

    .line 2354
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_16
    const-string v10, "parts"

    .line 2355
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2356
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 2357
    goto/16 :goto_1

    .line 2360
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_17
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select _filename as _display_name, 0 as _size,*,_mimetype as mime_type, _filepath as _data from parts where _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2362
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_18
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select _filename as _display_name, 0 as _size,*,_mimetype as mime_type, _filepath as _data from searchSvrParts where _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2365
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_19
    const-string v10, "searchSvrParts"

    .line 2366
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 2367
    goto/16 :goto_1

    .line 2370
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1a
    const-string v10, "parts"

    .line 2371
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2372
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sEASPartsMessageURI:Landroid/net/Uri;

    .line 2373
    goto/16 :goto_1

    .line 2376
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1b
    const-string v10, "searchSvrParts"

    .line 2377
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2378
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsMessageURI:Landroid/net/Uri;

    .line 2379
    goto/16 :goto_1

    .line 2382
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1c
    const-string v10, "mailboxs"

    .line 2383
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    .line 2384
    goto/16 :goto_1

    .line 2387
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1d
    const-string v10, "mailboxs"

    .line 2388
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2389
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    .line 2390
    goto/16 :goto_1

    .line 2393
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1e
    const-string v10, "messages"

    .line 2394
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2395
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2
    const/4 v3, 0x0

    const-string v4, "_mailAct"

    aput-object v4, p2, v3

    .line 2396
    .restart local p2
    sget-object v69, Lcom/htc/android/mail/MailProvider;->MailFlag:Landroid/net/Uri;

    .line 2397
    goto/16 :goto_1

    .line 2400
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_1f
    const-string v10, "pending_requests"

    .line 2401
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    .line 2402
    goto/16 :goto_1

    .line 2405
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_20
    move-object/from16 v72, p3

    .line 2407
    .local v72, pattern:Ljava/lang/String;
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    .line 2408
    .local v74, patternStringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "_fromEmail IN ("

    move-object/from16 v0, v74

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    const-string v3, ") OR _to IN ("

    move-object/from16 v0, v74

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2411
    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    const-string v3, ")"

    move-object/from16 v0, v74

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    .line 2416
    .local v73, patternString:Ljava/lang/String;
    new-instance v89, Ljava/lang/StringBuilder;

    invoke-direct/range {v89 .. v89}, Ljava/lang/StringBuilder;-><init>()V

    .line 2417
    .local v89, stringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "("

    move-object/from16 v0, v89

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    const-string v3, "SELECT messages._id AS _id,messages._tag AS _tag,messages._account AS _account,messages._to AS _to,messages._from AS _from,messages._fromEmail AS _fromEmail,messages._subject AS _subject,messages._date AS _date,messages._read AS _read,messages._del AS _del FROM messages WHERE "

    move-object/from16 v0, v89

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    move-object/from16 v0, v89

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    const-string v3, " UNION ALL "

    move-object/from16 v0, v89

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    const-string v3, "SELECT imessages._id AS _id,imessages._tag AS _tag,imessages._account AS _account,imessages._to AS _to,imessages._from AS _from,imessages._fromEmail AS _fromEmail,imessages._subject AS _subject,imessages._date AS _date,imessages._read AS _read,imessages._del AS _del FROM imessages WHERE "

    move-object/from16 v0, v89

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    move-object/from16 v0, v89

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    const-string v3, ")"

    move-object/from16 v0, v89

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    invoke-virtual/range {v89 .. v89}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2426
    const/16 p3, 0x0

    .line 2428
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessageViewURI:Landroid/net/Uri;

    move-object/from16 v10, v93

    .line 2430
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 2433
    .end local v10           #table:Ljava/lang/String;
    .end local v72           #pattern:Ljava/lang/String;
    .end local v73           #patternString:Ljava/lang/String;
    .end local v74           #patternStringBuilder:Ljava/lang/StringBuilder;
    .end local v89           #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_21
    move-object/from16 v56, p3

    .line 2434
    .local v56, mAddress:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v76, p2, v3

    .line 2436
    .local v76, provider:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 2437
    .local v29, addStringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "( _fromEmail LIKE "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    move-object/from16 v0, v29

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    const-string v3, " AND _fromEmail IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    move-object/from16 v0, v29

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    const-string v3, ")) OR ( _to LIKE "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    move-object/from16 v0, v29

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    const-string v3, " AND _to IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    move-object/from16 v0, v29

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    const-string v3, "))"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2449
    .local v30, addrpatternString:Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 2450
    .local v46, filterStringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "("

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    const-string v3, "SELECT messages._id AS _id,messages._tag AS _tag,messages._account AS _account,messages._to AS _to,messages._from AS _from,messages._fromEmail AS _fromEmail,messages._subject AS _subject,messages._date AS _date,messages._read AS _read,messages._del AS _del FROM messages WHERE "

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    const-string v3, " UNION ALL "

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    const-string v3, "SELECT imessages._id AS _id,imessages._tag AS _tag,imessages._account AS _account,imessages._to AS _to,imessages._from AS _from,imessages._fromEmail AS _fromEmail,imessages._subject AS _subject,imessages._date AS _date,imessages._read AS _read,imessages._del AS _del FROM imessages WHERE "

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    const-string v3, ")"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2458
    const/16 p3, 0x0

    .line 2459
    const/16 p2, 0x0

    .line 2461
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessageViewFilterURI:Landroid/net/Uri;

    move-object/from16 v10, v93

    .line 2462
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 2464
    .end local v10           #table:Ljava/lang/String;
    .end local v29           #addStringBuilder:Ljava/lang/StringBuilder;
    .end local v30           #addrpatternString:Ljava/lang/String;
    .end local v46           #filterStringBuilder:Ljava/lang/StringBuilder;
    .end local v56           #mAddress:Ljava/lang/String;
    .end local v76           #provider:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_22
    move-object/from16 v57, p3

    .line 2466
    .local v57, mAddressAll:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 2467
    .local v31, allStringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "( _fromEmail NOT LIKE \'%@gmail%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    const-string v3, " AND _fromEmail NOT LIKE \'%@yahoo%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    const-string v3, " AND _fromEmail NOT LIKE \'%@mac%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    const-string v3, " AND _fromEmail NOT LIKE \'%@aol%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    const-string v3, " AND _fromEmail IN ("

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    move-object/from16 v0, v31

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    const-string v3, ")) OR ( _to NOT LIKE \'%@gmail%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    const-string v3, " AND _to NOT LIKE \'%@yahoo%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    const-string v3, " AND _to NOT LIKE \'%@mac%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    const-string v3, " AND _to NOT LIKE \'%@aol%\'"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    const-string v3, " AND _to IN ("

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    move-object/from16 v0, v31

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    const-string v3, "))"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2482
    .local v32, allpatternString:Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 2483
    .local v45, filterAllStringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "("

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    const-string v3, "SELECT messages._id AS _id,messages._tag AS _tag,messages._account AS _account,messages._to AS _to,messages._from AS _from,messages._fromEmail AS _fromEmail,messages._subject AS _subject,messages._date AS _date,messages._read AS _read,messages._del AS _del FROM messages WHERE "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2486
    const-string v3, " UNION ALL "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    const-string v3, "SELECT imessages._id AS _id,imessages._tag AS _tag,imessages._account AS _account,imessages._to AS _to,imessages._from AS _from,imessages._fromEmail AS _fromEmail,imessages._subject AS _subject,imessages._date AS _date,imessages._read AS _read,imessages._del AS _del FROM imessages WHERE "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    const-string v3, ")"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2490
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2491
    const/16 p3, 0x0

    .line 2493
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessageViewFilterOtherURI:Landroid/net/Uri;

    move-object/from16 v10, v93

    .line 2494
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 2510
    .end local v10           #table:Ljava/lang/String;
    .end local v31           #allStringBuilder:Ljava/lang/StringBuilder;
    .end local v32           #allpatternString:Ljava/lang/String;
    .end local v45           #filterAllStringBuilder:Ljava/lang/StringBuilder;
    .end local v57           #mAddressAll:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_23
    const-string v54, ""

    .line 2511
    .local v54, keyword:Ljava/lang/String;
    if-nez p4, :cond_24

    .line 2512
    const-string v54, ""

    .line 2524
    :goto_a
    move-object/from16 v92, v54

    .line 2526
    .local v92, suggestionKey:Ljava/lang/String;
    const-string v10, "messages"

    .line 2527
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 2529
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2
    const/4 v3, 0x0

    const-string v4, "_id as suggest_intent_data_id"

    aput-object v4, p2, v3

    const/4 v3, 0x1

    const-string v4, "(\'?mailboxId=\' || _mailboxId || \'&accountId=\' || _account) as suggest_intent_extra_data"

    aput-object v4, p2, v3

    const/4 v3, 0x2

    const-string v4, "ifnull(_from || \' <\' ||  _fromEmail || \'>\', _fromEmail) as suggest_text_1"

    aput-object v4, p2, v3

    const/4 v3, 0x3

    const-string v4, "(_subjtype || _subject) as suggest_text_2"

    aput-object v4, p2, v3

    const/4 v3, 0x4

    const-string v4, "null as suggest_intent_action"

    aput-object v4, p2, v3

    .line 2540
    .restart local p2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "sp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v88

    .line 2541
    .local v88, sp:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PRE_QUERY"

    move-object/from16 v0, v88

    move-object/from16 v1, v54

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2542
    invoke-interface/range {v88 .. v88}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2544
    const-string v3, ""

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2545
    const/16 p4, 0x0

    .line 2546
    const/16 p3, 0x0

    .line 2553
    :goto_b
    const-string v3, "SearchWhere"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2554
    .local v85, searchWhere:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2555
    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    if-nez p3, :cond_28

    .line 2556
    :cond_1f
    move-object/from16 p3, v85

    .line 2562
    :cond_20
    :goto_c
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2563
    .local v55, limit:Ljava/lang/String;
    if-eqz v55, :cond_21

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v55

    .line 2564
    :cond_21
    if-eqz v55, :cond_22

    const-string v3, ""

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2565
    :cond_22
    const-string p5, "_internaldate desc"

    .line 2570
    :goto_d
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 2571
    .local v35, c:Landroid/database/Cursor;
    if-eqz v69, :cond_23

    .line 2572
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v35

    move-object/from16 v1, v69

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_23
    move-object/from16 v40, v35

    .line 2575
    goto/16 :goto_0

    .line 2514
    .end local v10           #table:Ljava/lang/String;
    .end local v35           #c:Landroid/database/Cursor;
    .end local v55           #limit:Ljava/lang/String;
    .end local v85           #searchWhere:Ljava/lang/String;
    .end local v88           #sp:Landroid/content/SharedPreferences$Editor;
    .end local v92           #suggestionKey:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p4

    array-length v3, v0

    if-lez v3, :cond_26

    .line 2515
    const/4 v3, 0x0

    aget-object v3, p4, v3

    if-nez v3, :cond_25

    .line 2516
    const-string v54, ""

    goto/16 :goto_a

    .line 2518
    :cond_25
    const/4 v3, 0x0

    aget-object v54, p4, v3

    goto/16 :goto_a

    .line 2521
    :cond_26
    const-string v54, ""

    goto/16 :goto_a

    .line 2548
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    .restart local v88       #sp:Landroid/content/SharedPreferences$Editor;
    .restart local v92       #suggestionKey:Ljava/lang/String;
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v54 .. v54}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 2549
    .local v37, condition:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p4, v0

    .end local p4
    const/4 v3, 0x0

    aput-object v37, p4, v3

    const/4 v3, 0x1

    aput-object v37, p4, v3

    const/4 v3, 0x2

    aput-object v37, p4, v3

    const/4 v3, 0x3

    aput-object v37, p4, v3

    const/4 v3, 0x4

    aput-object v37, p4, v3

    .line 2550
    .restart local p4
    const-string p3, " ( UCS2_LOWERCASE(_from) like ? or UCS2_LOWERCASE(_subject) like ? or UCS2_LOWERCASE(_fromEmail) like ? or UCS2_LOWERCASE(_to) like ? or UCS2_LOWERCASE(_cc) like ? )"

    goto/16 :goto_b

    .line 2558
    .end local v37           #condition:Ljava/lang/String;
    .restart local v85       #searchWhere:Ljava/lang/String;
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_c

    .line 2567
    .restart local v55       #limit:Ljava/lang/String;
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_internaldate desc limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_d

    .line 2609
    .end local v10           #table:Ljava/lang/String;
    .end local v54           #keyword:Ljava/lang/String;
    .end local v55           #limit:Ljava/lang/String;
    .end local v85           #searchWhere:Ljava/lang/String;
    .end local v88           #sp:Landroid/content/SharedPreferences$Editor;
    .end local v92           #suggestionKey:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_24
    const-string v10, "providersettings"

    .line 2610
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    .line 2611
    goto/16 :goto_1

    .line 2614
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_25
    const-string v10, "providersettings"

    .line 2615
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2616
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    .line 2617
    goto/16 :goto_1

    .line 2619
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_26
    const-string v10, "globalSetting"

    .line 2620
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->globalSetting:Landroid/net/Uri;

    .line 2621
    goto/16 :goto_1

    .line 2624
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_27
    const-string v10, "notification"

    .line 2625
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    .line 2626
    goto/16 :goto_1

    .line 2628
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_28
    const-string v10, "notification"

    .line 2629
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2632
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    .line 2633
    goto/16 :goto_1

    .line 2637
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v26

    .line 2639
    .local v26, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v28

    .line 2640
    .local v28, accounts:[Lcom/htc/android/mail/Account;
    move-object/from16 v0, v28

    array-length v3, v0

    mul-int/lit8 v62, v3, 0x2

    .line 2641
    .local v62, mailboxIdsLen:I
    move/from16 v0, v62

    new-array v0, v0, [J

    move-object/from16 v61, v0

    .line 2642
    .local v61, mailboxIds:[J
    const/16 v47, 0x0

    .restart local v47       #i:I
    :goto_e
    move/from16 v0, v47

    move/from16 v1, v62

    if-ge v0, v1, :cond_2a

    .line 2643
    const-wide/16 v3, -0x1

    aput-wide v3, v61, v47

    .line 2642
    add-int/lit8 v47, v47, 0x1

    goto :goto_e

    .line 2645
    :cond_2a
    const/16 v51, 0x0

    .line 2646
    .local v51, isDraftOrOutExist:Z
    const/16 v47, 0x0

    :goto_f
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v47

    if-ge v0, v3, :cond_2d

    .line 2647
    aget-object v3, v28, v47

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v58

    .line 2648
    .local v58, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v58, :cond_2b

    .line 2649
    mul-int/lit8 v3, v47, 0x2

    move-object/from16 v0, v58

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    aput-wide v4, v61, v3

    .line 2650
    const/16 v51, 0x1

    .line 2652
    :cond_2b
    aget-object v3, v28, v47

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v58

    .line 2653
    if-eqz v58, :cond_2c

    .line 2654
    mul-int/lit8 v3, v47, 0x2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v58

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    aput-wide v4, v61, v3

    .line 2655
    const/16 v51, 0x1

    .line 2646
    :cond_2c
    add-int/lit8 v47, v47, 0x1

    goto :goto_f

    .line 2658
    .end local v58           #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_2d
    new-instance v84, Ljava/lang/StringBuffer;

    invoke-direct/range {v84 .. v84}, Ljava/lang/StringBuffer;-><init>()V

    .line 2659
    .local v84, sb:Ljava/lang/StringBuffer;
    if-eqz v51, :cond_31

    .line 2660
    const-string v3, "(CASE "

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2661
    const/16 v47, 0x0

    :goto_10
    move-object/from16 v0, v61

    array-length v3, v0

    move/from16 v0, v47

    if-ge v0, v3, :cond_2f

    .line 2662
    aget-wide v3, v61, v47

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    .line 2661
    :goto_11
    add-int/lit8 v47, v47, 0x1

    goto :goto_10

    .line 2663
    :cond_2e
    const-string v3, " WHEN messages._mailboxId = "

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-wide v4, v61, v47

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2664
    const-string v3, " THEN 1 "

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 2666
    :cond_2f
    const-string v3, "ELSE 0 END) as isDraft"

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2670
    :goto_12
    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 2671
    move-object/from16 v0, p2

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v67, v0

    .line 2672
    .local v67, newColumns:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v67

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2673
    move-object/from16 v0, v67

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v67, v3

    .line 2674
    move-object/from16 p2, v67

    .line 2676
    .end local v67           #newColumns:[Ljava/lang/String;
    :cond_30
    const-string v10, "messages, accounts"

    .line 2677
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messages._account = accounts._id AND messages._del = \'-1\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND messages._mailboxid not in (accounts._trashfolderId, accounts._outfolderId)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2679
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessageViewFilterURI:Landroid/net/Uri;

    .line 2680
    goto/16 :goto_1

    .line 2668
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :cond_31
    const-string v3, "\'0\' as isDraft"

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 2685
    .end local v26           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v28           #accounts:[Lcom/htc/android/mail/Account;
    .end local v47           #i:I
    .end local v51           #isDraftOrOutExist:Z
    .end local v61           #mailboxIds:[J
    .end local v62           #mailboxIdsLen:I
    .end local v84           #sb:Ljava/lang/StringBuffer;
    :sswitch_2a
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select count(t2._id) as total from mailboxs t1, messages t2 where t1._id=t2._mailboxId AND t1._defaultfolder=2147483647 and t2._del = -1 and t2._read = 0"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2687
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const-string v71, "SELECT accounts._id, accounts._desc, accounts._emailaddress, count(messages._id) , accounts._defaultaccount, accounts._colorIdx , accounts._providerGroup , accounts._provider, accounts._protocol FROM accounts JOIN mailboxs ON (accounts._del = -1 AND accounts._id = mailboxs._account AND mailboxs._default_sync = 1) LEFT JOIN messages ON (messages._mailboxId = mailboxs._id AND messages._del = -1 AND messages._read = 0) "

    .line 2693
    .local v71, p:Ljava/lang/String;
    if-eqz p3, :cond_32

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_32

    .line 2694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    .line 2696
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GROUP BY accounts._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    .line 2697
    const/16 v27, 0x0

    .line 2698
    .local v27, accountUnread:Landroid/database/Cursor;
    const/16 v64, 0x0

    .line 2700
    .local v64, mc:Landroid/database/MatrixCursor;
    :try_start_4
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2701
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v75, v0

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v75, v3

    const/4 v3, 0x1

    const-string v4, "_desc"

    aput-object v4, v75, v3

    const/4 v3, 0x2

    const-string v4, "_emailaddress"

    aput-object v4, v75, v3

    const/4 v3, 0x3

    const-string v4, "_count"

    aput-object v4, v75, v3

    const/4 v3, 0x4

    const-string v4, "_defaultaccount"

    aput-object v4, v75, v3

    const/4 v3, 0x5

    const-string v4, "_colorIdx"

    aput-object v4, v75, v3

    const/4 v3, 0x6

    const-string v4, "_providerGroup"

    aput-object v4, v75, v3

    const/4 v3, 0x7

    const-string v4, "_provider"

    aput-object v4, v75, v3

    const/16 v3, 0x8

    const-string v4, "_protocol"

    aput-object v4, v75, v3

    .line 2702
    .local v75, projection:[Ljava/lang/String;
    new-instance v65, Landroid/database/MatrixCursor;

    move-object/from16 v0, v65

    move-object/from16 v1, v75

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2703
    .end local v64           #mc:Landroid/database/MatrixCursor;
    .local v65, mc:Landroid/database/MatrixCursor;
    :try_start_5
    move-object/from16 v0, v75

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v98, v0

    .line 2704
    .local v98, values:[Ljava/lang/Object;
    :goto_13
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2705
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2706
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2707
    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2708
    const/4 v3, 0x3

    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2709
    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2710
    const/4 v3, 0x5

    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2711
    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2712
    const/4 v3, 0x7

    const/4 v4, 0x7

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2713
    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2714
    const/4 v3, 0x6

    aget-object v3, v98, v3

    if-eqz v3, :cond_33

    const/4 v3, 0x6

    aget-object v3, v98, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Yahoo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2715
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->getEncryptKey(Landroid/content/Context;)[B

    move-result-object v34

    .line 2716
    .local v34, byteKey:[B
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, v98, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v98, v3

    .line 2718
    .end local v34           #byteKey:[B
    :cond_33
    move-object/from16 v0, v65

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_13

    .line 2721
    .end local v98           #values:[Ljava/lang/Object;
    :catchall_2
    move-exception v3

    move-object/from16 v64, v65

    .end local v65           #mc:Landroid/database/MatrixCursor;
    .end local v75           #projection:[Ljava/lang/String;
    .restart local v64       #mc:Landroid/database/MatrixCursor;
    :goto_14
    if-eqz v27, :cond_34

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_34

    .line 2722
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2721
    :cond_34
    throw v3

    .end local v64           #mc:Landroid/database/MatrixCursor;
    .restart local v65       #mc:Landroid/database/MatrixCursor;
    .restart local v75       #projection:[Ljava/lang/String;
    .restart local v98       #values:[Ljava/lang/Object;
    :cond_35
    if-eqz v27, :cond_36

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_36

    .line 2722
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_36
    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    move-object/from16 v40, v65

    .line 2726
    goto/16 :goto_0

    .line 2729
    .end local v10           #table:Ljava/lang/String;
    .end local v27           #accountUnread:Landroid/database/Cursor;
    .end local v65           #mc:Landroid/database/MatrixCursor;
    .end local v71           #p:Ljava/lang/String;
    .end local v75           #projection:[Ljava/lang/String;
    .end local v98           #values:[Ljava/lang/Object;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_2c
    if-nez p3, :cond_37

    .line 2730
    const-string p3, ""

    .line 2734
    :goto_15
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT count(_id) as count FROM messages WHERE _read = \'1\' AND _del = \'-1\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2732
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_15

    .line 2740
    :sswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    if-nez p3, :cond_38

    .line 2743
    const-string p3, ""

    .line 2748
    :goto_16
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT count(messages._id) as count FROM messages, accounts WHERE messages._account = accounts._id AND messages._read = \'0\' AND messages._del = \'-1\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2745
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND  messages._mailboxid not in (accounts._trashfolderId, accounts._outfolderId)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_16

    .line 2753
    :sswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    const-string v10, "accounts"

    .line 2756
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2757
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2
    const/4 v3, 0x0

    const-string v4, "AccountVerify"

    aput-object v4, p2, v3

    .line 2760
    .restart local p2
    sget-object v69, Lcom/htc/android/mail/MailProvider;->AccountVerify:Landroid/net/Uri;

    .line 2762
    goto/16 :goto_1

    .line 2765
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 2768
    .local v39, curResult:Landroid/database/Cursor;
    if-eqz p3, :cond_3a

    .line 2769
    const-string v3, "messages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    const/16 v33, 0x1

    .line 2776
    .local v33, bMessagesTable:Z
    :goto_17
    if-eqz v33, :cond_3c

    .line 2777
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_39

    const-string v3, "MailProvider"

    const-string v4, "it can\'t notify both tables now. Exchange Table will not be notiied"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_39
    :goto_18
    if-eqz v33, :cond_3a

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .end local v33           #bMessagesTable:Z
    :cond_3a
    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    move-object/from16 v40, v39

    .line 2786
    goto/16 :goto_0

    .line 2769
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :cond_3b
    const/16 v33, 0x0

    goto :goto_17

    .line 2778
    .restart local v33       #bMessagesTable:Z
    :cond_3c
    if-nez v33, :cond_39

    .line 2779
    sget-boolean v3, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v3, :cond_39

    const-string v3, "MailProvider"

    const-string v4, "searh none tables"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2790
    .end local v33           #bMessagesTable:Z
    .end local v39           #curResult:Landroid/database/Cursor;
    :sswitch_30
    const-string v10, "messages"

    .line 2792
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    const-string v3, "extraWhere"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2793
    .restart local v44       #extraWhere:Ljava/lang/String;
    if-eqz v44, :cond_3d

    .line 2794
    if-eqz p3, :cond_3d

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 2795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2799
    :cond_3d
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    .line 2800
    goto/16 :goto_1

    .line 2803
    .end local v10           #table:Ljava/lang/String;
    .end local v44           #extraWhere:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc.android.mail.permission.READ_ACCOUNT"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    const-string v10, "messages, accounts"

    .line 2805
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messages._account = accounts._id AND messages._del = \'-1\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND messages._mailboxid not in (accounts._trashfolderId, accounts._outfolderId)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2808
    const-string v3, "extraWhere"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2809
    .restart local v44       #extraWhere:Ljava/lang/String;
    if-eqz v44, :cond_3e

    .line 2810
    if-eqz p3, :cond_3e

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 2811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2815
    :cond_3e
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    .line 2816
    goto/16 :goto_1

    .line 2819
    .end local v10           #table:Ljava/lang/String;
    .end local v44           #extraWhere:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_32
    const-string v10, "messages"

    .line 2820
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sEASMessageIdsURI:Landroid/net/Uri;

    .line 2821
    goto/16 :goto_1

    .line 2823
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_33
    const-string v10, "email_history"

    .line 2824
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    .line 2825
    goto/16 :goto_1

    .line 2828
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_34
    const-string v99, ""

    .line 2829
    .local v99, whereStr:Ljava/lang/String;
    const-string v90, ""

    .line 2830
    .local v90, styleStr:Ljava/lang/String;
    if-nez p3, :cond_3f

    const-string p3, ""

    .line 2831
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v99

    .line 2834
    const-string v3, "1"

    const-string v4, "style"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2835
    const-string v90, ", 1 as style"

    .line 2839
    :goto_19
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select name as display_name, data as data1, 0 as _id, -1 as data2, -1 as contact_id, \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0117

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as data3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v90

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM email_history "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v99

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " group by data order by data asc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .local v42, ehCursor:Landroid/database/Cursor;
    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    move-object/from16 v40, v42

    .line 2844
    goto/16 :goto_0

    .line 2837
    .end local v10           #table:Ljava/lang/String;
    .end local v42           #ehCursor:Landroid/database/Cursor;
    .restart local v93       #table:Ljava/lang/String;
    :cond_40
    const-string v90, ", 0 as style"

    goto :goto_19

    .line 2846
    .end local v90           #styleStr:Ljava/lang/String;
    .end local v99           #whereStr:Ljava/lang/String;
    :sswitch_35
    const-string v10, "people_db.groups"

    .line 2847
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sPeopleGroupURI:Landroid/net/Uri;

    .line 2848
    goto/16 :goto_1

    .line 2851
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_36
    const-string v10, "people_db.data"

    .line 2852
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sPeopleDataURI:Landroid/net/Uri;

    .line 2853
    goto/16 :goto_1

    .line 2857
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_37
    const-string v3, "accounts JOIN messages ON ( accounts._id = messages._account ) JOIN mailboxs ON ( messages._mailboxId = mailboxs._id AND mailboxs._defaultfolder = 2147483647 )"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2860
    const-string v16, "accounts._id"

    .line 2861
    .local v16, groupby:Ljava/lang/String;
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 2863
    .restart local v40       #cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v10, v93

    .line 2865
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2869
    .end local v10           #table:Ljava/lang/String;
    .end local v16           #groupby:Ljava/lang/String;
    .end local v40           #cursor:Landroid/database/Cursor;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_38
    const-string v10, "tags"

    .line 2870
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    sget-object v69, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    .line 2871
    goto/16 :goto_1

    .line 2874
    .end local v10           #table:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :sswitch_39
    const-string v3, "joinTable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2875
    .local v52, joinTable:Ljava/lang/String;
    const-string v3, "messages_tags_relation INNER JOIN messages ON (messages_tags_relation._messageId = messages._id)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2876
    const-string v3, "tags"

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2877
    const-string v3, "messages_tags_relation INNER JOIN tags ON (messages_tags_relation._tagId = tags._id)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2879
    :cond_41
    #calls: Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v24, p5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    move-object/from16 v10, v93

    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    goto/16 :goto_0

    .line 2896
    .end local v52           #joinTable:Ljava/lang/String;
    :cond_42
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v24, p5

    invoke-virtual/range {v17 .. v24}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 2897
    .restart local v35       #c:Landroid/database/Cursor;
    if-eqz v69, :cond_43

    .line 2898
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v35

    move-object/from16 v1, v69

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_43
    move-object/from16 v40, v35

    .line 2900
    goto/16 :goto_0

    .line 2721
    .end local v10           #table:Ljava/lang/String;
    .end local v35           #c:Landroid/database/Cursor;
    .restart local v27       #accountUnread:Landroid/database/Cursor;
    .restart local v64       #mc:Landroid/database/MatrixCursor;
    .restart local v71       #p:Ljava/lang/String;
    .restart local v93       #table:Ljava/lang/String;
    :catchall_3
    move-exception v3

    goto/16 :goto_14

    .line 2331
    .end local v27           #accountUnread:Landroid/database/Cursor;
    .end local v64           #mc:Landroid/database/MatrixCursor;
    .end local v71           #p:Ljava/lang/String;
    .end local v93           #table:Ljava/lang/String;
    .restart local v10       #table:Ljava/lang/String;
    .restart local v43       #encAccount:Landroid/database/Cursor;
    .restart local v80       #ret:Landroid/database/MatrixCursor;
    :catchall_4
    move-exception v3

    goto/16 :goto_9

    .line 2044
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x5 -> :sswitch_10
        0x6 -> :sswitch_11
        0x7 -> :sswitch_15
        0x8 -> :sswitch_17
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_20
        0x12 -> :sswitch_21
        0x13 -> :sswitch_22
        0x16 -> :sswitch_23
        0x18 -> :sswitch_1c
        0x1f -> :sswitch_d
        0x20 -> :sswitch_e
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_1f
        0x28 -> :sswitch_1e
        0x2a -> :sswitch_27
        0x2b -> :sswitch_28
        0x2c -> :sswitch_1d
        0x30 -> :sswitch_30
        0x31 -> :sswitch_32
        0x32 -> :sswitch_16
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_30
        0x36 -> :sswitch_31
        0x64 -> :sswitch_29
        0x66 -> :sswitch_2c
        0x67 -> :sswitch_2d
        0x69 -> :sswitch_2f
        0x70 -> :sswitch_2a
        0x71 -> :sswitch_26
        0x96 -> :sswitch_1a
        0xc8 -> :sswitch_2e
        0xca -> :sswitch_f
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_19
        0xce -> :sswitch_18
        0xcf -> :sswitch_1b
        0xd1 -> :sswitch_b
        0xd2 -> :sswitch_c
        0x15e -> :sswitch_5
        0x15f -> :sswitch_6
        0x160 -> :sswitch_7
        0x161 -> :sswitch_9
        0x162 -> :sswitch_a
        0x163 -> :sswitch_5
        0x16e -> :sswitch_5
        0x16f -> :sswitch_8
        0x1f5 -> :sswitch_2b
        0x1f6 -> :sswitch_12
        0x258 -> :sswitch_35
        0x259 -> :sswitch_36
        0x2bc -> :sswitch_37
        0x2710 -> :sswitch_38
        0x2711 -> :sswitch_39
    .end sparse-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 50
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 3719
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    :cond_0
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v34

    .line 3721
    .local v34, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 3722
    .local v21, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getDatabaseWrapper()Lcom/htc/android/mail/MailProvider$DatabaseWrapper;

    move-result-object v4

    .line 3724
    .local v4, dbWrapper:Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
    const/4 v5, 0x6

    move/from16 v0, v34

    if-ne v0, v5, :cond_7

    .line 3726
    if-eqz p2, :cond_2

    const-string v5, "_defaultfolderId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3727
    const-string v5, "_defaultfolderId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    .line 3728
    .local v39, obj:Ljava/lang/Object;
    if-nez v39, :cond_1

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v5

    .line 3729
    :cond_1
    check-cast v39, Ljava/lang/Long;

    .end local v39           #obj:Ljava/lang/Object;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 3730
    .local v48, v:J
    const-wide/16 v5, 0x1

    cmp-long v5, v48, v5

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v5

    .line 3733
    .end local v48           #v:J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc.android.mail.permission.WRITE_ACCOUNT"

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3735
    .local v44, rowId:J
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3736
    .local v24, encValues:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/htc/android/mail/MailProvider;->encInformationifNeed(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3737
    const-string v5, "accounts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3738
    .local v20, count:I
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3739
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 3741
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3744
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "_desc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "_defaultaccount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3747
    :cond_4
    sget-object v5, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3749
    :cond_5
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update account1>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    .end local v20           #count:I
    .end local v24           #encValues:Landroid/content/ContentValues;
    .end local v44           #rowId:J
    :cond_6
    :goto_0
    return v20

    .line 3751
    :cond_7
    const/16 v5, 0x71

    move/from16 v0, v34

    if-ne v0, v5, :cond_9

    .line 3752
    const-string v5, "globalSetting"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3753
    .restart local v20       #count:I
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3754
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 3756
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 3758
    .end local v20           #count:I
    :cond_9
    const/4 v5, 0x5

    move/from16 v0, v34

    if-ne v0, v5, :cond_11

    .line 3760
    if-eqz p2, :cond_b

    const-string v5, "_defaultfolderId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3761
    const-string v5, "_defaultfolderId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    .line 3762
    .restart local v39       #obj:Ljava/lang/Object;
    if-nez v39, :cond_a

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v5

    .line 3763
    :cond_a
    check-cast v39, Ljava/lang/Long;

    .end local v39           #obj:Ljava/lang/Object;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 3764
    .restart local v48       #v:J
    const-wide/16 v5, 0x1

    cmp-long v5, v48, v5

    if-gez v5, :cond_b

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v5

    .line 3766
    .end local v48           #v:J
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc.android.mail.permission.WRITE_ACCOUNT"

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "MailProvider"

    const-string v6, "update account"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v40

    .line 3771
    .local v40, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 3772
    .restart local v20       #count:I
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3773
    .restart local v24       #encValues:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/htc/android/mail/MailProvider;->encInformationifNeed(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3774
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 3776
    const-string v5, "accounts"

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3777
    const-string v5, "_del"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3778
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 3790
    :cond_d
    :goto_1
    if-lez v20, :cond_e

    .line 3791
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3794
    :cond_e
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "_desc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "_defaultaccount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3797
    :cond_f
    sget-object v5, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3780
    :cond_10
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 3781
    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 3785
    .local v46, secondSegment:Ljava/lang/String;
    const-string v5, "lowStorage"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3786
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/android/mail/MailProvider;->handleLowStorage(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v20

    goto :goto_1

    .line 3802
    .end local v20           #count:I
    .end local v24           #encValues:Landroid/content/ContentValues;
    .end local v40           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v46           #secondSegment:Ljava/lang/String;
    :cond_11
    const/16 v5, 0x15e

    move/from16 v0, v34

    if-ne v0, v5, :cond_14

    .line 3803
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3804
    .restart local v20       #count:I
    if-lez v20, :cond_6

    .line 3805
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3806
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3807
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3808
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3809
    :cond_12
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3812
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailProvider;->notifyCombinedAccountAndMailbox(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3816
    .end local v20           #count:I
    :cond_14
    const/4 v5, 0x2

    move/from16 v0, v34

    if-ne v0, v5, :cond_18

    .line 3817
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3818
    .restart local v44       #rowId:J
    const-string v5, "messages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3819
    .restart local v20       #count:I
    if-lez v20, :cond_15

    .line 3820
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3821
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3822
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3825
    :cond_15
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3826
    :cond_16
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3829
    :cond_17
    const-string v5, "_flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3830
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesMarkStarURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3835
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_18
    const/16 v5, 0xcc

    move/from16 v0, v34

    if-ne v0, v5, :cond_1b

    .line 3836
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3837
    .restart local v44       #rowId:J
    const-string v5, "searchSvrMessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3838
    .restart local v20       #count:I
    if-lez v20, :cond_19

    .line 3839
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3843
    :cond_19
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3844
    :cond_1a
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3849
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_1b
    const/16 v5, 0x2e

    move/from16 v0, v34

    if-ne v0, v5, :cond_1d

    .line 3850
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3851
    .restart local v44       #rowId:J
    const-string v5, "messages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3853
    .restart local v20       #count:I
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3854
    :cond_1c
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3859
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_1d
    const/4 v5, 0x1

    move/from16 v0, v34

    if-ne v0, v5, :cond_20

    .line 3860
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3861
    .restart local v20       #count:I
    if-lez v20, :cond_1e

    .line 3862
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3863
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3864
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3867
    :cond_1e
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3868
    :cond_1f
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3874
    .end local v20           #count:I
    :cond_20
    const/16 v5, 0xcb

    move/from16 v0, v34

    if-ne v0, v5, :cond_23

    .line 3875
    const-string v5, "searchSvrMessages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3876
    .restart local v20       #count:I
    if-lez v20, :cond_21

    .line 3877
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3881
    :cond_21
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3882
    :cond_22
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3887
    .end local v20           #count:I
    :cond_23
    const/16 v5, 0x2d

    move/from16 v0, v34

    if-ne v0, v5, :cond_25

    .line 3888
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3890
    .restart local v20       #count:I
    const-string v5, "_del"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "_mailboxId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3891
    :cond_24
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3896
    .end local v20           #count:I
    :cond_25
    const/16 v5, 0x8

    move/from16 v0, v34

    if-ne v0, v5, :cond_26

    .line 3897
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3898
    .restart local v44       #rowId:J
    const-string v5, "parts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3899
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3903
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_26
    const/4 v5, 0x7

    move/from16 v0, v34

    if-ne v0, v5, :cond_27

    .line 3904
    const-string v5, "parts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3905
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3909
    .end local v20           #count:I
    :cond_27
    const/16 v5, 0x37

    move/from16 v0, v34

    if-ne v0, v5, :cond_29

    .line 3910
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 3911
    .restart local v44       #rowId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v37

    .line 3912
    .local v37, msgId:J
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_28

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PARTS_MESSAGE_ID > update : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", message : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v37

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    :cond_28
    const-string v5, "parts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3914
    .restart local v20       #count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3918
    .end local v20           #count:I
    .end local v37           #msgId:J
    .end local v44           #rowId:J
    :cond_29
    const/16 v5, 0xce

    move/from16 v0, v34

    if-ne v0, v5, :cond_2a

    .line 3919
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3920
    .restart local v44       #rowId:J
    const-string v5, "searchSvrParts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3921
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3925
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_2a
    const/16 v5, 0xcd

    move/from16 v0, v34

    if-ne v0, v5, :cond_2b

    .line 3926
    const-string v5, "searchSvrParts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3927
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3931
    .end local v20           #count:I
    :cond_2b
    const/16 v5, 0x1f

    move/from16 v0, v34

    if-ne v0, v5, :cond_2c

    .line 3932
    const-string v5, "easTracking"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3933
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3937
    .end local v20           #count:I
    :cond_2c
    const/16 v5, 0x20

    move/from16 v0, v34

    if-ne v0, v5, :cond_2d

    .line 3938
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3939
    .restart local v44       #rowId:J
    const-string v5, "easTracking"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3940
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3944
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_2d
    const/16 v5, 0x23

    move/from16 v0, v34

    if-ne v0, v5, :cond_2e

    .line 3945
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3946
    .restart local v44       #rowId:J
    const-string v5, "messages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3947
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3951
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_2e
    const/16 v5, 0x28

    move/from16 v0, v34

    if-ne v0, v5, :cond_2f

    .line 3952
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3953
    .restart local v44       #rowId:J
    const-string v5, "messages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3954
    .restart local v20       #count:I
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3955
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3959
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_2f
    const/16 v5, 0x26

    move/from16 v0, v34

    if-ne v0, v5, :cond_31

    .line 3960
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_30

    const-string v5, "MailProvider"

    const-string v6, "update(), match == PENDINGREQUESTS"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3961
    :cond_30
    const-string v5, "pending_requests"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3962
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3966
    .end local v20           #count:I
    :cond_31
    const/16 v5, 0x2c

    move/from16 v0, v34

    if-ne v0, v5, :cond_32

    .line 3967
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3968
    .restart local v44       #rowId:J
    const-string v5, "mailboxs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3969
    .restart local v20       #count:I
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3973
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_32
    const/16 v5, 0x18

    move/from16 v0, v34

    if-ne v0, v5, :cond_33

    .line 3974
    const-string v5, "mailboxs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3975
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3979
    .end local v20           #count:I
    :cond_33
    const/16 v5, 0xc8

    move/from16 v0, v34

    if-ne v0, v5, :cond_34

    .line 3980
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc.android.mail.permission.WRITE_ACCOUNT"

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3982
    .restart local v44       #rowId:J
    const-string v5, "accounts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3983
    .restart local v20       #count:I
    sget-object v5, Lcom/htc/android/mail/MailProvider;->AccountVerify:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3987
    .end local v20           #count:I
    .end local v44           #rowId:J
    :cond_34
    const/16 v5, 0x2a

    move/from16 v0, v34

    if-eq v0, v5, :cond_35

    const/16 v5, 0x2b

    move/from16 v0, v34

    if-ne v0, v5, :cond_38

    .line 3988
    :cond_35
    const/16 v5, 0x2b

    move/from16 v0, v34

    if-ne v0, v5, :cond_36

    .line 3989
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3990
    .restart local v44       #rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->whereWithId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3992
    .end local v44           #rowId:J
    :cond_36
    const-string v5, "notification"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3993
    .restart local v20       #count:I
    if-lez v20, :cond_37

    .line 3994
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3996
    :cond_37
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3998
    .end local v20           #count:I
    :cond_38
    const/16 v5, 0x12c

    move/from16 v0, v34

    if-eq v0, v5, :cond_39

    const/16 v5, 0x12d

    move/from16 v0, v34

    if-ne v0, v5, :cond_3b

    .line 3999
    :cond_39
    const/16 v5, 0x12d

    move/from16 v0, v34

    if-ne v0, v5, :cond_3a

    .line 4000
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 4001
    .restart local v44       #rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->whereWithId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4003
    .end local v44           #rowId:J
    :cond_3a
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 4004
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4005
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4006
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4010
    .end local v20           #count:I
    :cond_3b
    const/16 v5, 0x12e

    move/from16 v0, v34

    if-eq v0, v5, :cond_3c

    const/16 v5, 0x12f

    move/from16 v0, v34

    if-ne v0, v5, :cond_3e

    .line 4011
    :cond_3c
    const/16 v5, 0x12f

    move/from16 v0, v34

    if-ne v0, v5, :cond_3d

    .line 4012
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 4013
    .restart local v44       #rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->whereWithId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4015
    .end local v44           #rowId:J
    :cond_3d
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 4016
    .restart local v20       #count:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4017
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4018
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4022
    .end local v20           #count:I
    :cond_3e
    const/16 v5, 0x130

    move/from16 v0, v34

    if-eq v0, v5, :cond_3f

    const/16 v5, 0x131

    move/from16 v0, v34

    if-ne v0, v5, :cond_41

    .line 4023
    :cond_3f
    const/16 v5, 0x131

    move/from16 v0, v34

    if-ne v0, v5, :cond_40

    .line 4024
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 4025
    .restart local v44       #rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->whereWithId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4027
    .end local v44           #rowId:J
    :cond_40
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 4028
    .restart local v20       #count:I
    if-lez v20, :cond_6

    .line 4029
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4030
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4031
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4036
    .end local v20           #count:I
    :cond_41
    const/16 v5, 0x132

    move/from16 v0, v34

    if-eq v0, v5, :cond_42

    const/16 v5, 0x133

    move/from16 v0, v34

    if-ne v0, v5, :cond_46

    .line 4037
    :cond_42
    const/16 v5, 0x133

    move/from16 v0, v34

    if-ne v0, v5, :cond_43

    .line 4038
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 4039
    .restart local v44       #rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider;->whereWithId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4042
    .end local v44           #rowId:J
    :cond_43
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from messages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4043
    .local v7, str:Ljava/lang/String;
    const/16 v19, 0x0

    .line 4045
    .local v19, c:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "parts"

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sDeletePartColumns:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 4046
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailProvider;->deleteBinaryAttachments(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4048
    if-eqz v19, :cond_44

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_44

    .line 4049
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 4052
    :cond_44
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message in (select _id from messages where %s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v8, v10

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4053
    const-string v5, "parts"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4055
    const-string v5, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 4057
    .restart local v20       #count:I
    if-lez v20, :cond_6

    .line 4058
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4059
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4060
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAllMessageWithAccountURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4048
    .end local v20           #count:I
    :catchall_0
    move-exception v5

    if-eqz v19, :cond_45

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_45

    .line 4049
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 4048
    :cond_45
    throw v5

    .line 4065
    .end local v7           #str:Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_46
    const/16 v5, 0x191

    move/from16 v0, v34

    if-eq v0, v5, :cond_47

    const/16 v5, 0x192

    move/from16 v0, v34

    if-ne v0, v5, :cond_50

    .line 4066
    :cond_47
    const/16 v5, 0x191

    move/from16 v0, v34

    if-ne v0, v5, :cond_49

    const/16 v42, 0x1

    .line 4068
    .local v42, read:I
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    .line 4069
    .local v26, id:J
    const-wide/16 v35, -0x1

    .local v35, messageId:J
    const-wide/16 v15, -0x1

    .local v15, accountId:J
    const-wide/16 v31, -0x1

    .line 4071
    .local v31, mailboxId:J
    const-string v5, "accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4072
    .local v17, accountIdStr:Ljava/lang/String;
    const-string v5, "mailboxId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 4073
    .local v33, mailboxIdStr:Ljava/lang/String;
    const-string v5, "group"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4074
    .local v25, group:Ljava/lang/String;
    const/16 v47, 0x0

    .line 4075
    .local v47, uid:Ljava/lang/String;
    if-eqz v17, :cond_48

    if-eqz v33, :cond_48

    if-nez v25, :cond_4c

    .line 4076
    :cond_48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/messages/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 4077
    .local v9, messageuri:Landroid/net/Uri;
    const/4 v5, 0x5

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "_uid"

    aput-object v6, v10, v5

    const/4 v5, 0x2

    const-string v6, "_account"

    aput-object v6, v10, v5

    const/4 v5, 0x3

    const-string v6, "_mailboxId"

    aput-object v6, v10, v5

    const/4 v5, 0x4

    const-string v6, "_group"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v21

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 4078
    .local v22, cursor:Landroid/database/Cursor;
    if-nez v22, :cond_4a

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4066
    .end local v9           #messageuri:Landroid/net/Uri;
    .end local v15           #accountId:J
    .end local v17           #accountIdStr:Ljava/lang/String;
    .end local v22           #cursor:Landroid/database/Cursor;
    .end local v25           #group:Ljava/lang/String;
    .end local v26           #id:J
    .end local v31           #mailboxId:J
    .end local v33           #mailboxIdStr:Ljava/lang/String;
    .end local v35           #messageId:J
    .end local v42           #read:I
    .end local v47           #uid:Ljava/lang/String;
    :cond_49
    const/16 v42, 0x0

    goto :goto_2

    .line 4079
    .restart local v9       #messageuri:Landroid/net/Uri;
    .restart local v15       #accountId:J
    .restart local v17       #accountIdStr:Ljava/lang/String;
    .restart local v22       #cursor:Landroid/database/Cursor;
    .restart local v25       #group:Ljava/lang/String;
    .restart local v26       #id:J
    .restart local v31       #mailboxId:J
    .restart local v33       #mailboxIdStr:Ljava/lang/String;
    .restart local v35       #messageId:J
    .restart local v42       #read:I
    .restart local v47       #uid:Ljava/lang/String;
    :cond_4a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_4b

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4081
    :cond_4b
    const-string v5, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 4082
    const-string v5, "_account"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 4083
    const-string v5, "_mailboxId"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 4084
    const-string v5, "_group"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4085
    const-string v5, "_uid"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 4087
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 4098
    .end local v9           #messageuri:Landroid/net/Uri;
    .end local v22           #cursor:Landroid/database/Cursor;
    :goto_3
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v14

    .line 4099
    .local v14, account:Lcom/htc/android/mail/Account;
    if-nez v14, :cond_4d

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4089
    .end local v14           #account:Lcom/htc/android/mail/Account;
    :cond_4c
    move-wide/from16 v35, v26

    .line 4091
    :try_start_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 4092
    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v31

    goto :goto_3

    .line 4093
    :catch_0
    move-exception v23

    .line 4094
    .local v23, e:Ljava/lang/NumberFormatException;
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4101
    .end local v23           #e:Ljava/lang/NumberFormatException;
    .restart local v14       #account:Lcom/htc/android/mail/Account;
    :cond_4d
    invoke-virtual {v14}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v30

    .line 4103
    .local v30, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v41, Lcom/htc/android/mail/Request;

    invoke-direct/range {v41 .. v41}, Lcom/htc/android/mail/Request;-><init>()V

    .line 4104
    .local v41, r:Lcom/htc/android/mail/Request;
    const/4 v5, 0x1

    move/from16 v0, v42

    if-ne v0, v5, :cond_4f

    .line 4105
    const/4 v5, 0x6

    move-object/from16 v0, v41

    iput v5, v0, Lcom/htc/android/mail/Request;->command:I

    .line 4110
    :goto_4
    new-instance v29, Lcom/htc/android/mail/MailMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    move-wide/from16 v1, v35

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 4111
    .local v29, mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 4112
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 4113
    move-object/from16 v0, v47

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 4116
    :cond_4e
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 4117
    .local v28, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4119
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 4120
    .local v18, b:Landroid/os/Bundle;
    const-string v5, "MailMessageList"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4121
    const-string v5, "Mailbox"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4122
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 4123
    move-object/from16 v0, v41

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 4125
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v43

    .line 4126
    .local v43, requestController:Lcom/htc/android/mail/AbsRequestController;
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/RequestController;->setReadStatus(Lcom/htc/android/mail/Request;)V

    .line 4127
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4107
    .end local v18           #b:Landroid/os/Bundle;
    .end local v28           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v29           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v43           #requestController:Lcom/htc/android/mail/AbsRequestController;
    :cond_4f
    const/4 v5, 0x5

    move-object/from16 v0, v41

    iput v5, v0, Lcom/htc/android/mail/Request;->command:I

    goto :goto_4

    .line 4128
    .end local v14           #account:Lcom/htc/android/mail/Account;
    .end local v15           #accountId:J
    .end local v17           #accountIdStr:Ljava/lang/String;
    .end local v25           #group:Ljava/lang/String;
    .end local v26           #id:J
    .end local v30           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v31           #mailboxId:J
    .end local v33           #mailboxIdStr:Ljava/lang/String;
    .end local v35           #messageId:J
    .end local v41           #r:Lcom/htc/android/mail/Request;
    .end local v42           #read:I
    .end local v47           #uid:Ljava/lang/String;
    :cond_50
    const/16 v5, 0x2710

    move/from16 v0, v34

    if-ne v0, v5, :cond_51

    .line 4129
    const-string v5, "tags"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 4130
    .restart local v20       #count:I
    if-lez v20, :cond_6

    .line 4131
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4132
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4133
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/android/mail/MailProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4139
    .end local v20           #count:I
    :cond_51
    sget-boolean v5, Lcom/htc/android/mail/MailProvider;->DEBUG:Z

    if-eqz v5, :cond_52

    const-string v5, "MailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE not supported for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    :cond_52
    const/16 v20, 0x0

    goto/16 :goto_0
.end method
