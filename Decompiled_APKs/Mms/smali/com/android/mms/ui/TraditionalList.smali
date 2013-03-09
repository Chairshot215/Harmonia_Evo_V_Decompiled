.class public Lcom/android/mms/ui/TraditionalList;
.super Lcom/android/mms/ui/ConversationListBaseActivity;
.source "TraditionalList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;,
        Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;,
        Lcom/android/mms/ui/TraditionalList$UIHandler;
    }
.end annotation


# static fields
.field private static final BG:Ljava/lang/String; = "bg"

.field private static final CONTEXT_MENU_DELIVERY_REPORT:I = 0x4a

.field private static final CONTEXT_MENU_EDIT:I = 0x47

.field private static final CONTEXT_MENU_LOCK_MESSAGE:I = 0x4b

.field private static final CONTEXT_MENU_MESSAGE_DETAILS:I = 0x49

.field private static final CONTEXT_MENU_RETRY_SENDING:I = 0x48

.field private static final CONTEXT_MENU_SAVEASTASK:I = 0x4d

.field private static final CONTEXT_MENU_UNDELETE:I = 0x46

.field private static final CONTEXT_MENU_UNLOCK_MESSAGE:I = 0x4c

.field private static final DELETE_PROJECTION:[Ljava/lang/String; = null

.field public static final FOLDER_DRAFT:I = 0x66

.field public static final FOLDER_INBOX:I = 0x64

.field public static final FOLDER_NAME_DRAFT:Ljava/lang/String; = "draft"

.field public static final FOLDER_NAME_INBOX:Ljava/lang/String; = "inbox"

.field public static final FOLDER_NAME_OUTBOX:Ljava/lang/String; = "outbox"

.field public static final FOLDER_NAME_SENT:Ljava/lang/String; = "sent"

.field public static final FOLDER_NAME_TRASH:Ljava/lang/String; = "trash"

.field public static final FOLDER_OUTBOX:I = 0x65

.field public static final FOLDER_SENT:I = 0x68

.field public static final FOLDER_TRASH:I = 0x67

.field public static final INTENT_EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final INTENT_EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final INTENT_EXTRA_COMPOSE:Ljava/lang/String; = "compose_mode"

.field public static final INTENT_EXTRA_EXIT_SENT:Ljava/lang/String; = "exit_on_sent"

.field public static final INTENT_EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field public static final INTENT_EXTRA_FROM_DRAFT:Ljava/lang/String; = "from_draft"

.field public static final INTENT_EXTRA_FROM_FORWARD:Ljava/lang/String; = "Forward_msg"

.field public static final INTENT_EXTRA_FROM_REPLY:Ljava/lang/String; = "Reply_msg"

.field public static final INTENT_EXTRA_IS_PHONENUM:Ljava/lang/String; = "is_phoneNum"

.field public static final INTENT_EXTRA_LOCK:Ljava/lang/String; = "locked"

.field private static final INTENT_EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final INTENT_EXTRA_MSG_ID:Ljava/lang/String; = "msg_Id"

.field public static final INTENT_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final INTENT_EXTRA_MSG_URI:Ljava/lang/String; = "msg_uri"

.field public static final INTENT_EXTRA_PHONENUM:Ljava/lang/String; = "is_phoneNum"

.field private static final INTENT_EXTRA_PROJECTION:Ljava/lang/String; = "projection"

.field private static final INTENT_EXTRA_SEARCH:Ljava/lang/String; = "search"

.field public static final INTENT_EXTRA_SMS_BODY:Ljava/lang/String; = "sms_body"

.field public static final INTENT_EXTRA_SUBJECT:Ljava/lang/String; = "subject"

.field public static final INTENT_EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final INTENT_EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final INTENT_EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final MENU_EMPTY_TRASH_CAN:I = 0x32

.field private static final MENU_RETRY_SENDING_ALL:I = 0x34

.field private static final MENU_SWITCH_BOX:I = 0x33

.field private static final MENU_VIDEO_CALL:I = 0x35

.field private static final MMS:Ljava/lang/String; = "mms"

.field private static final NOLOCK:Ljava/lang/String; = "locked=0"

.field private static final QUERY_COUNT_TOKEN:I = 0xca

.field private static final QUERY_DELETE_TOKEN:I = 0xc9

.field private static final QUERY_TOKEN:I = 0xc8

.field private static final SMS:Ljava/lang/String; = "sms"

.field private static final TAG:Ljava/lang/String; = "TraditionalList"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final UI_HIDE_NO_MSG:I = 0x15

.field public static final UI_SHOW_NO_MSG:I = 0x14


# instance fields
.field private categoryAdapter:Lcom/android/mms/category/CategorySelectorAdapter;

.field private mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

.field private final mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mDeleteUnlock:Z

.field private mNeedQueryMore:Z

.field private final mOnListItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private final mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mPhoneIdleReceiver:Landroid/content/BroadcastReceiver;

.field protected mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

.field private mUnreadCount:I

.field protected m_CurrentUri:Landroid/net/Uri;

.field private m_IsFromHome:Z

.field protected m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

.field private m_dpCategorySwitch:Lcom/htc/widget/DropDownList;

.field private m_nCurrentQueryCount:I

.field protected m_nFolder:I

.field private final m_nQueryLimit:I

.field private m_tvFolder:Landroid/widget/TextView;

.field private m_tvTitle:Landroid/widget/TextView;

.field private m_tvUnreadCountView:Landroid/widget/TextView;

.field private m_vFooter:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/TraditionalList;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvTitle:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvUnreadCountView:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_dpCategorySwitch:Lcom/htc/widget/DropDownList;

    .line 104
    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    .line 105
    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_vFooter:Landroid/view/View;

    .line 111
    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    .line 112
    iput v1, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/TraditionalList;->mUnreadCount:I

    .line 114
    iput v1, p0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    .line 115
    iput-boolean v1, p0, Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/mms/ui/TraditionalList;->mNeedQueryMore:Z

    .line 117
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nQueryLimit:I

    .line 118
    iput-boolean v1, p0, Lcom/android/mms/ui/TraditionalList;->m_IsFromHome:Z

    .line 196
    new-instance v0, Lcom/android/mms/ui/TraditionalList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$1;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mPhoneIdleReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v0, Lcom/android/mms/ui/TraditionalList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$2;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 384
    new-instance v0, Lcom/android/mms/ui/TraditionalList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$3;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mOnListItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 565
    new-instance v0, Lcom/android/mms/ui/TraditionalList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$4;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mContextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 822
    new-instance v0, Lcom/android/mms/ui/TraditionalList$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$5;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    .line 2076
    new-instance v0, Lcom/android/mms/ui/TraditionalList$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$11;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2115
    return-void
.end method

.method private DeleteSMSMMSById(Ljava/lang/String;ZIZ)V
    .locals 8
    .parameter "Ids"
    .parameter "bSmsMms"
    .parameter "category"
    .parameter "Unlock"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1972
    const/4 v1, 0x0

    .line 1973
    .local v1, delUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1974
    .local v4, where:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1976
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1977
    const-string v5, "type < 0 AND _id in (%s)"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1978
    if-nez p4, :cond_0

    .line 1980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND locked=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1993
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1995
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1996
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "category"

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1997
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2000
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2002
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2003
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v5, "bg"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2004
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2009
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_3
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete Uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete where:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v3, 0x0

    .line 2016
    .local v3, result:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2022
    :goto_1
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    return-void

    .line 1985
    .end local v3           #result:I
    :cond_4
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1986
    const-string v5, "msg_box < 0 AND _id in (%s)"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1987
    if-nez p4, :cond_0

    .line 1989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND locked=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2018
    .restart local v3       #result:I
    :catch_0
    move-exception v2

    .line 2020
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DeleteSMSMMSById]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TraditionalList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/mms/ui/TraditionalList;->mNeedQueryMore:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/TraditionalList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList;->updateCountText(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->countUnRead()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/TraditionalList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList;->setListFootView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/TraditionalList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/TraditionalList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/TraditionalList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/TraditionalList;JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/TraditionalList;->editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/TraditionalList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList;->openMessage(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/TraditionalList;Landroid/view/ContextMenu;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/TraditionalList;->addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/TraditionalList;Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList;->isInSentbox(Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/TraditionalList;Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList;->isReportRequired(Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/TraditionalList;JJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/TraditionalList;->retryToSendMessage(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/TraditionalList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->mUnreadCount:I

    return v0
.end method

.method private addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
    .locals 20
    .parameter "menu"
    .parameter "address"

    .prologue
    .line 2157
    invoke-static/range {p2 .. p2}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    .line 2158
    .local v13, isPhoneNumber:Z
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v12

    .line 2159
    .local v12, isEmailAddr:Z
    if-nez v13, :cond_1

    if-nez v12, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    const/4 v15, 0x0

    .line 2165
    .local v15, name:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2166
    .local v14, isSim:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v10

    .line 2168
    .local v10, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v9

    .line 2169
    .local v9, cache:Lcom/android/mms/util/ContactNameCache;
    move-object/from16 v0, p2

    invoke-virtual {v9, v10, v0}, Lcom/android/mms/util/ContactNameCache;->getPersonalId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v16

    .line 2173
    .local v16, person_id:J
    const-string v3, "TraditionalList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "person_id = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const-wide/16 v3, -0x2

    cmp-long v3, v16, v3

    if-nez v3, :cond_2

    .line 2178
    move v5, v13

    .line 2179
    .local v5, isPhoneNumber2:Z
    move-object v7, v10

    .line 2180
    .local v7, context2:Landroid/content/Context;
    move-object/from16 v8, p2

    .line 2181
    .local v8, address2:Ljava/lang/String;
    move-object v6, v9

    .line 2182
    .local v6, cache2:Lcom/android/mms/util/ContactNameCache;
    new-instance v18, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/TraditionalList$13;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/TraditionalList$13;-><init>(Lcom/android/mms/ui/TraditionalList;ZLcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2198
    .end local v5           #isPhoneNumber2:Z
    .end local v6           #cache2:Lcom/android/mms/util/ContactNameCache;
    .end local v7           #context2:Landroid/content/Context;
    .end local v8           #address2:Ljava/lang/String;
    :cond_2
    const-wide/16 v3, -0x1

    cmp-long v3, v16, v3

    if-nez v3, :cond_5

    .line 2210
    :goto_1
    const-string v3, "TraditionalList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "name = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    if-eqz v13, :cond_4

    .line 2215
    move-object/from16 v0, p2

    invoke-static {v10, v0, v15}, Lcom/android/mms/ui/MessageUtils;->getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 2216
    .local v11, intent:Landroid/content/Intent;
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_3

    .line 2218
    const-string v3, "personId"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2219
    if-eqz p2, :cond_3

    .line 2221
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2224
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v18, 0x0

    const v19, 0x7f0901b9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2226
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVT()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2228
    const/4 v3, 0x0

    const/16 v4, 0x35

    const/16 v18, 0x0

    const v19, 0x7f090018

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2232
    .end local v11           #intent:Landroid/content/Intent;
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_6

    .line 2234
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v18, 0x0

    const v19, 0x7f0901bf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalList;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Lcom/android/mms/ui/MessageUtils;->getOpenContactCardIntent(JZ)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2204
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v9, v10, v0}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2205
    move-object/from16 v0, p2

    invoke-virtual {v9, v10, v0}, Lcom/android/mms/util/ContactNameCache;->getIsFromSim(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_1

    .line 2237
    :cond_6
    if-nez v13, :cond_7

    if-eqz v12, :cond_0

    :cond_7
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-gez v3, :cond_0

    .line 2239
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2240
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v3, "is_phoneNum"

    invoke-virtual {v11, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2241
    const-string v3, "address"

    move-object/from16 v0, p2

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/16 v18, 0x0

    const v19, 0x7f0901d7

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private allowBackupMessage()Z
    .locals 2

    .prologue
    .line 904
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private allowFolderSwitch()Z
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->containsMultipleFolders()Z

    move-result v0

    return v0
.end method

.method private buildContentUri(ILcom/android/mms/category/Category;)Landroid/net/Uri;
    .locals 7
    .parameter "folder"
    .parameter "category"

    .prologue
    .line 1150
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1154
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1155
    const-string v4, "SortbyDate2"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1159
    :cond_0
    sget-object v4, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-virtual {v4, p2}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1161
    const/16 p1, 0x64

    .line 1166
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList;->getFolderName(I)Ljava/lang/String;

    move-result-object v2

    .line 1167
    .local v2, sfolder:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1168
    const-string v4, "category"

    invoke-virtual {p2}, Lcom/android/mms/category/Category;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    .end local v2           #sfolder:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1175
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "TraditionalList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThreadUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-object v3

    .line 1170
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1172
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TraditionalList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get uri, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelBackgroundWokers()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "TraditionalList"

    const-string v1, "[cancelBackgroundWokers] cancel query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->cancelOperation(I)V

    .line 350
    :cond_0
    return-void
.end method

.method private confirmDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 2091
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2092
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f030005

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2093
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0e0025

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2094
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z

    .line 2095
    new-instance v4, Lcom/android/mms/ui/TraditionalList$12;

    invoke-direct {v4, p0, v1}, Lcom/android/mms/ui/TraditionalList$12;-><init>(Lcom/android/mms/ui/TraditionalList;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2104
    const v4, 0x7f0902ff

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2105
    const v4, 0x7f0200d1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2106
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2107
    const v4, 0x20c015f

    invoke-virtual {v0, v4, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2108
    const v4, 0x20c0164

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2110
    const v4, 0x7f0e0024

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2111
    .local v3, textDelete:Landroid/widget/TextView;
    const v4, 0x7f090303

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2112
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 2113
    return-void
.end method

.method private countUnRead()V
    .locals 6

    .prologue
    .line 2132
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2133
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/TraditionalList;->mUnreadCount:I

    .line 2134
    if-nez v1, :cond_1

    .line 2153
    :cond_0
    return-void

    .line 2139
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2140
    .local v0, count:I
    const-string v3, "TraditionalList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[countUnRead] cursor count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUnreadCountCountTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2144
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2146
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2147
    const/16 v3, 0x12

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-gtz v3, :cond_3

    .line 2149
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/TraditionalList;->mUnreadCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/TraditionalList;->mUnreadCount:I

    .line 2144
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createFootView(I)Landroid/view/View;
    .locals 1
    .parameter "nWidth"

    .prologue
    .line 1102
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v0

    .line 1104
    .local v0, footer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1108
    .end local v0           #footer:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #footer:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createHeaderView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 1080
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x20900be

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1081
    .local v1, header:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1083
    const v3, 0x20201cf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    .line 1084
    const v3, 0x20200ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1085
    .local v2, refreshIcon:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 1087
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    :cond_0
    const v3, 0x20201d3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1090
    .local v0, ascIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setFolder()V

    .line 1097
    .end local v0           #ascIcon:Landroid/widget/ImageView;
    .end local v1           #header:Landroid/view/View;
    .end local v2           #refreshIcon:Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1       #header:Landroid/view/View;
    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method private editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 8
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    .line 1288
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 1323
    :goto_0
    return-void

    .line 1294
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1295
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "category"

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v6}, Lcom/android/mms/category/Category;->value()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1296
    const-string v5, "thread_id"

    invoke-virtual {v2, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1297
    const/4 v0, 0x0

    .line 1299
    .local v0, address:Ljava/lang/String;
    const-string v5, "sms"

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1301
    const/4 v5, 0x3

    invoke-interface {p6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1302
    const/4 v5, 0x4

    invoke-interface {p6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, body:Ljava/lang/String;
    const-string v5, "sms_body"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    .end local v1           #body:Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20c016e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    :cond_1
    const-string v5, "address"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v5, "from_draft"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1320
    const-string v5, "msg_Id"

    invoke-virtual {v2, v5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1321
    const-string v5, "msg_type"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/TraditionalList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 1307
    :cond_2
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1308
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0, p6, p3, p4}, Lcom/android/mms/ui/TraditionalList;->getMmsAddress(Landroid/database/Cursor;J)Ljava/lang/String;

    move-result-object v0

    .line 1309
    const/16 v5, 0xf

    invoke-interface {p6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, mSubject:Ljava/lang/String;
    const-string v5, "subject"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    sget-object v5, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1312
    const-string v5, "msg_uri"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private forwardMessage(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    .line 1356
    const/4 v10, 0x0

    .line 1358
    .local v10, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11, p1}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1359
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    iget-object v11, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v11, v0}, Lcom/android/mms/ui/TraditionalListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v6

    .line 1360
    .local v6, msg:Lcom/android/mms/msg/AbstractMessage;
    new-instance v4, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1362
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "exit_on_sent"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1363
    const-string v11, "Forward_msg"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1365
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1367
    sget-object v11, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1369
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1371
    .local v8, subject:Ljava/lang/String;
    const-string v11, "sms_body"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1372
    const-string v11, "msg_type"

    const-string v12, "sms"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const/4 v11, -0x1

    invoke-virtual {p0, v4, v11}, Lcom/android/mms/ui/TraditionalList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 1430
    :goto_0
    return-void

    .end local v8           #subject:Ljava/lang/String;
    :cond_0
    move-object v5, v6

    .line 1377
    check-cast v5, Lcom/android/mms/msg/MultimediaMessage;

    .line 1378
    .local v5, mmi:Lcom/android/mms/msg/MultimediaMessage;
    new-instance v7, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1379
    .local v7, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-virtual {v5}, Lcom/android/mms/msg/MultimediaMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, contentType:Ljava/lang/String;
    const-string v11, "application/vnd.wap.multipart.related"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1382
    invoke-virtual {v5}, Lcom/android/mms/msg/MultimediaMessage;->willDiscardAttachmentWhileForwading()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1384
    const v11, 0x7f090308

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1386
    :cond_1
    const-string v11, "application/vnd.wap.multipart.related"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 1389
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1392
    .restart local v8       #subject:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1394
    invoke-virtual {v5}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 1395
    .local v3, encstr:Ljava/lang/String;
    const-string v9, ""

    .line 1397
    .local v9, substr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v11, v12, :cond_3

    .line 1399
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1402
    :cond_3
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_5

    .line 1404
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1411
    .end local v3           #encstr:Ljava/lang/String;
    .end local v9           #substr:Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v11, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1412
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/mms/msg/MultimediaMessage;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1416
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v7, v12}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1424
    const-string v11, "category"

    iget-object v12, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v12}, Lcom/android/mms/category/Category;->value()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    const-string v11, "msg_uri"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1426
    const-string v11, "subject"

    invoke-virtual {v4, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const-string v11, "msg_type"

    const-string v12, "mms"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    const/4 v11, -0x1

    invoke-virtual {p0, v4, v11}, Lcom/android/mms/ui/TraditionalList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto/16 :goto_0

    .line 1408
    .restart local v3       #encstr:Ljava/lang/String;
    .restart local v9       #substr:Ljava/lang/String;
    :cond_5
    move-object v8, v3

    goto :goto_1

    .line 1418
    .end local v3           #encstr:Ljava/lang/String;
    .end local v9           #substr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1420
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v11, "TraditionalList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to copy message: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1421
    const v11, 0x7f09005f

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private getAllowedCategories(I)Ljava/util/List;
    .locals 2
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/category/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v0, categories:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/category/Category;>;"
    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    sget-object v1, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    sget-object v1, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_1
    return-object v0
.end method

.method private getFolderName(I)Ljava/lang/String;
    .locals 4
    .parameter "folder"

    .prologue
    .line 1181
    const-string v0, ""

    .line 1182
    .local v0, sFolder:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1185
    :pswitch_0
    const-string v0, "inbox"

    .line 1202
    :goto_0
    return-object v0

    .line 1188
    :pswitch_1
    const-string v0, "outbox"

    .line 1189
    goto :goto_0

    .line 1191
    :pswitch_2
    const-string v0, "draft"

    .line 1192
    goto :goto_0

    .line 1194
    :pswitch_3
    const-string v0, "sent"

    .line 1195
    goto :goto_0

    .line 1197
    :pswitch_4
    const-string v0, "trash"

    .line 1198
    goto :goto_0

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getPrimaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v0}, Lcom/android/mms/category/CategorySelector;->getCategoryTitle()Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private gotoCorrectConversationMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 654
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 656
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_thread_mode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 657
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 658
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.ConversationList"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TraditionalList;->startActivity(Landroid/content/Intent;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->finish()V

    .line 667
    .end local v0           #flag:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initCategorySelector(Lcom/htc/widget/HeaderBarDropDown;)V
    .locals 2
    .parameter "dropview"

    .prologue
    .line 935
    if-nez p1, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    :cond_2
    new-instance v0, Lcom/android/mms/category/CategorySelector;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/category/CategorySelector;-><init>(Landroid/content/Context;Lcom/android/mms/category/Category;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    .line 943
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setCategorySwitcher()V

    .line 944
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->SetOnItemListener(Lcom/htc/widget/HeaderBarDropDown;)V

    .line 945
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v1, Lcom/android/mms/ui/TraditionalList$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/TraditionalList$7;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->setOnCategoryChangeListener(Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;)V

    .line 953
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    goto :goto_0
.end method

.method private initTitleLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 915
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TraditionalList;->initCategorySelector(Lcom/htc/widget/HeaderBarDropDown;)V

    .line 919
    return-void
.end method

.method private isInSentbox(Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1133
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1135
    goto :goto_0

    .line 1139
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isReportRequired(Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 1145
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isDeliveryReportRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isReadReportRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockMessage(Lcom/android/mms/msg/AbstractMessage;Z)V
    .locals 6
    .parameter "msgItem"
    .parameter "locked"

    .prologue
    const/4 v3, 0x1

    .line 1235
    if-nez p1, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1243
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1249
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1251
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1252
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "locked"

    if-eqz p2, :cond_2

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1254
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/TraditionalList$8;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/ui/TraditionalList$8;-><init>(Lcom/android/mms/ui/TraditionalList;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1247
    .end local v0           #lockUri:Landroid/net/Uri;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 1252
    .restart local v0       #lockUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private makeCall(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "_intent"
    .parameter "idVTCall"

    .prologue
    const/4 v4, 0x1

    .line 1207
    move-object v1, p1

    .line 1209
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    if-eqz p2, :cond_2

    .line 1216
    const-string v3, "isVTCall"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1220
    :cond_2
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1221
    .local v2, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "fromDialer"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1222
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    const-string v3, "TraditionalList"

    const-string v4, "is not Contact make call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1227
    .end local v2           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TraditionalList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onContextItemSelected] MENU_CALL error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openMessage(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 1265
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1266
    .local v0, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1267
    .local v2, nThread_Id:I
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1268
    .local v1, nMsg_Id:I
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1269
    .local v4, sType:Ljava/lang/String;
    iget v5, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    invoke-direct {p0, v5}, Lcom/android/mms/ui/TraditionalList;->getFolderName(I)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, sFoler:Ljava/lang/String;
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "category = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v7}, Lcom/android/mms/category/Category;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    const-string v5, "msg_Id"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1279
    const-string v5, "msg_type"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    const-string v5, "folder"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string v5, "category"

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v6}, Lcom/android/mms/category/Category;->value()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalList;->startActivity(Landroid/content/Intent;)V

    .line 1284
    return-void
.end method

.method private replyMessage(JLjava/lang/String;Landroid/database/Cursor;)V
    .locals 5
    .parameter "msgId"
    .parameter "msgType"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 1327
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 1352
    :goto_0
    return-void

    .line 1332
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1333
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1335
    .local v0, address:Ljava/lang/String;
    const-string v2, "sms"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1337
    const/4 v2, 0x3

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1344
    :goto_1
    if-nez v0, :cond_1

    .line 1346
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1348
    :cond_1
    const-string v2, "category"

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3}, Lcom/android/mms/category/Category;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1349
    const-string v2, "address"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    const-string v2, "Reply_msg"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1351
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TraditionalList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1341
    :cond_2
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/mms/ui/TraditionalList;->getMmsAddress(Landroid/database/Cursor;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private resendShortMessage(JJ)V
    .locals 18
    .parameter "threadId"
    .parameter "msgId"

    .prologue
    .line 1637
    move-wide/from16 v16, p1

    .line 1638
    .local v16, threadId1:J
    move-wide/from16 v10, p3

    .line 1642
    .local v10, msgId1:J
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1643
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "address"

    aput-object v6, v4, v1

    const/4 v1, 0x1

    const-string v6, "body"

    aput-object v6, v4, v1

    const/4 v1, 0x2

    const-string v6, "thread_id"

    aput-object v6, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 1646
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 1650
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1659
    .local v4, dest:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1660
    .local v5, body:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .local v8, realTid:J
    move-wide/from16 v6, p1

    .line 1661
    invoke-static/range {v4 .. v11}, Lcom/android/mms/ui/MessageUtils;->createSmsMessageSenderIntent(Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/content/Intent;

    move-result-object v14

    .line 1663
    .local v14, intent:Landroid/content/Intent;
    new-instance v15, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1664
    .local v15, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-interface/range {v15 .. v17}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1665
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v2, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1680
    .end local v4           #dest:Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v8           #realTid:J
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #sender:Lcom/android/mms/transaction/MessageSender;
    :cond_0
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1688
    .end local v3           #uri:Landroid/net/Uri;
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1674
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 1676
    .local v13, e:Lcom/google/android/mms/MmsException;
    :try_start_3
    const-string v1, "TraditionalList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[resendShortMessage] MmsException: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1680
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1684
    .end local v3           #uri:Landroid/net/Uri;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v13

    .line 1686
    .local v13, e:Ljava/lang/Exception;
    const-string v1, "TraditionalList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[resendShortMessage] Exception:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1680
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private retrySendAllMessage()V
    .locals 6

    .prologue
    .line 1552
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1553
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1555
    const/4 v2, 0x0

    const v3, 0x7f090167

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/TraditionalList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 1558
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/TraditionalList$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/TraditionalList$10;-><init>(Lcom/android/mms/ui/TraditionalList;Landroid/database/Cursor;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1582
    return-void
.end method

.method private retryToSendMessage(JJLjava/lang/String;)V
    .locals 16
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1586
    const-string v2, "TraditionalList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[retryToSendMessage] threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const-string v2, "sms"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1589
    invoke-direct/range {p0 .. p4}, Lcom/android/mms/ui/TraditionalList;->resendShortMessage(JJ)V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 1596
    .local v14, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "protocol"

    move-object/from16 v0, p5

    invoke-virtual {v14, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1597
    const-string v2, "message"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1600
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 1604
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1607
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1608
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "err_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    const-string v2, "retry_index"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1610
    const-string v2, "due_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1613
    .local v9, columnIndex:I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1614
    .local v12, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1616
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 1619
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/TraditionalList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1625
    .end local v9           #columnIndex:I
    .end local v12           #id:J
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1629
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #uriBuilder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v11

    .line 1631
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "TraditionalList"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1625
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private setCategorySwitcher()V
    .locals 3

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/TraditionalList;->getAllowedCategories(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->DropDownCategoryChoice(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1028
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/mms/category/CategorySelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/category/CategorySelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/mms/ui/TraditionalList;->categoryAdapter:Lcom/android/mms/category/CategorySelectorAdapter;

    .line 1029
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->categoryAdapter:Lcom/android/mms/category/CategorySelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1031
    .end local v0           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private setFolder()V
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 971
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    packed-switch v0, :pswitch_data_0

    .line 989
    const-string v0, "TraditionalList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 974
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    const v1, 0x7f09033f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 977
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    const v1, 0x7f090340

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 980
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 983
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    const v1, 0x7f090341

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 986
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_tvFolder:Landroid/widget/TextView;

    const v1, 0x7f090342

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setListFootView(Z)V
    .locals 4
    .parameter "bShowFoot"

    .prologue
    const/4 v3, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1056
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList;->m_vFooter:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1058
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/TraditionalList;->createFootView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/TraditionalList;->m_vFooter:Landroid/view/View;

    .line 1061
    :cond_0
    if-eqz p1, :cond_2

    .line 1063
    const-string v1, "TraditionalList"

    const-string v2, "[setListFootView] show footer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-boolean v1, p0, Lcom/android/mms/ui/TraditionalList;->mNeedQueryMore:Z

    if-nez v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList;->m_vFooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1068
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/TraditionalList;->mNeedQueryMore:Z

    .line 1076
    :goto_0
    return-void

    .line 1072
    :cond_2
    const-string v1, "TraditionalList"

    const-string v2, "[setListFootView] hide footer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList;->m_vFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 1074
    iput-boolean v3, p0, Lcom/android/mms/ui/TraditionalList;->mNeedQueryMore:Z

    goto :goto_0
.end method

.method private switchFolder(I)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->allowFolderSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    if-ne v0, p1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const-string v0, "TraditionalList"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    const-string v0, "TraditionalList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 893
    :cond_3
    iput p1, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    .line 894
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/TraditionalList;->buildContentUri(ILcom/android/mms/category/Category;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    .line 895
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setCategorySwitcher()V

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalList;->startAsyncQuery(Z)V

    .line 898
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setFolder()V

    .line 899
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->setTitle()V

    goto :goto_0
.end method

.method private updateCountText(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v1

    iget-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 1115
    .local v0, bar:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 1117
    if-gtz p1, :cond_1

    .line 1118
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    .line 1129
    .end local v0           #bar:Lcom/htc/widget/HeaderBar;
    :cond_0
    :goto_0
    return-void

    .line 1120
    .restart local v0       #bar:Lcom/htc/widget/HeaderBar;
    :cond_1
    const/16 v1, 0x63

    if-le p1, v1, :cond_2

    .line 1121
    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setBubbleText(Ljava/lang/String;)V

    .line 1124
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    goto :goto_0

    .line 1123
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBar;->setBubbleCount(I)V

    goto :goto_1
.end method


# virtual methods
.method DeleteAllMessageByCursor(Landroid/database/Cursor;Z)V
    .locals 12
    .parameter "cursor"
    .parameter "Unlock"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2027
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2032
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2033
    .local v2, SmsIds:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 2034
    .local v5, bSms:Z
    const/4 v7, 0x0

    .line 2035
    .local v7, hasSmsid:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2036
    .local v0, MmsIds:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2037
    .local v4, bMms:Z
    const/4 v6, 0x0

    .line 2038
    .local v6, hasMmsid:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2041
    :cond_2
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2043
    const/4 v5, 0x1

    .line 2044
    if-eqz v7, :cond_3

    .line 2046
    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    :cond_3
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    const/4 v7, 0x1

    .line 2061
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2063
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2064
    .local v3, SmsIdsList:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2066
    .local v1, MmsIdsList:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 2068
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v8}, Lcom/android/mms/category/Category;->value()I

    move-result v8

    invoke-direct {p0, v3, v10, v8, p2}, Lcom/android/mms/ui/TraditionalList;->DeleteSMSMMSById(Ljava/lang/String;ZIZ)V

    .line 2070
    :cond_4
    if-eqz v4, :cond_0

    .line 2072
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v8}, Lcom/android/mms/category/Category;->value()I

    move-result v8

    invoke-direct {p0, v1, v11, v8, p2}, Lcom/android/mms/ui/TraditionalList;->DeleteSMSMMSById(Ljava/lang/String;ZIZ)V

    goto :goto_0

    .line 2053
    .end local v1           #MmsIdsList:Ljava/lang/String;
    .end local v3           #SmsIdsList:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x1

    .line 2054
    if-eqz v6, :cond_6

    .line 2056
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_6
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    const/4 v6, 0x1

    goto :goto_1
.end method

.method RestoreMessageById(JZI)V
    .locals 7
    .parameter "msgId"
    .parameter "bSms"
    .parameter "category"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1504
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/TraditionalList$9;

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/TraditionalList$9;-><init>(Lcom/android/mms/ui/TraditionalList;ZJI)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1548
    return-void
.end method

.method addQueryLimitExtra(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 2315
    const-string v0, "query_order"

    const-string v1, " normalized_date DESC "

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2316
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2317
    const-string v0, "query_limit"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2320
    :cond_0
    return-void
.end method

.method protected deleteMessage(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    .line 1434
    new-instance v2, Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;-><init>(Lcom/android/mms/ui/TraditionalList;Landroid/net/Uri;)V

    .line 1436
    .local v2, l:Lcom/android/mms/ui/TraditionalList$DeleteMessageListener;
    iget v4, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v5, 0x67

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1438
    invoke-virtual {p0, v6, p1}, Lcom/android/mms/ui/TraditionalList;->deleteWithThread(ZLandroid/net/Uri;)V

    .line 1452
    :goto_0
    return-void

    .line 1442
    :cond_0
    const v3, 0x20c01fc

    .line 1443
    .local v3, titleId:I
    const v0, 0x7f0900ad

    .line 1445
    .local v0, bodyId:I
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1446
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c015f

    invoke-virtual {v4, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c0164

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method protected deleteWithThread(ZLandroid/net/Uri;)V
    .locals 8
    .parameter "bToTrash"
    .parameter "uDelete"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1460
    :cond_0
    const-string v0, "TraditionalList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[deleteWithThread] ToTrash = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", uri = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    move-object v3, p2

    .line 1465
    .local v3, uri:Landroid/net/Uri;
    const/16 v1, 0xc9

    .line 1466
    .local v1, token:I
    :try_start_0
    const-string v4, "locked=0"

    .line 1468
    .local v4, selection:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1471
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "bg"

    const-string v2, "true"

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1472
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1475
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1477
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1478
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    const-string v0, "trash"

    const-string v2, "true"

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1479
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1483
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1485
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1488
    :cond_3
    const-string v0, "TraditionalList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[deleteWithThread] final delete uri = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    .end local v4           #selection:Ljava/lang/String;
    :goto_0
    return-void

    .line 1491
    :catch_0
    move-exception v7

    .line 1493
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "TraditionalList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[deleteWithThread] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFolder()I
    .locals 1

    .prologue
    .line 2256
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    return v0
.end method

.method public getMmsAddress(Landroid/database/Cursor;J)Ljava/lang/String;
    .locals 14
    .parameter "cursor"
    .parameter "msgId"

    .prologue
    .line 2261
    const-string v2, ""

    .line 2262
    .local v2, address:Ljava/lang/String;
    sget-object v11, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2266
    .local v10, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 2267
    .local v7, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-eqz v7, :cond_4

    .line 2269
    const/4 v9, 0x0

    .line 2270
    .local v9, tempaddress:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v11, 0x13

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2271
    .local v8, nMsgType:I
    const/16 v11, 0x84

    if-eq v8, v11, :cond_0

    const/16 v11, 0x82

    if-ne v8, v11, :cond_6

    .line 2273
    :cond_0
    const/4 v11, 0x1

    new-array v9, v11, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9           #tempaddress:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v11, 0x0

    check-cast v7, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    aput-object v12, v9, v11

    .line 2274
    .restart local v9       #tempaddress:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v9, :cond_4

    .line 2276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2277
    .local v4, contact:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v11, v9

    if-ge v6, v11, :cond_5

    .line 2279
    aget-object v11, v9, v6

    if-nez v11, :cond_2

    .line 2277
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2283
    :cond_2
    aget-object v11, v9, v6

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 2284
    .local v3, adrStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2286
    if-lez v6, :cond_3

    .line 2288
    const/16 v11, 0x2c

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2290
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2306
    .end local v3           #adrStr:Ljava/lang/String;
    .end local v4           #contact:Ljava/lang/StringBuilder;
    .end local v6           #i:I
    .end local v8           #nMsgType:I
    .end local v9           #tempaddress:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v5

    .line 2308
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v11, "TraditionalList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot load: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    :cond_4
    :goto_2
    return-object v2

    .line 2293
    .restart local v4       #contact:Ljava/lang/StringBuilder;
    .restart local v6       #i:I
    .restart local v8       #nMsgType:I
    .restart local v9       #tempaddress:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2294
    goto :goto_2

    .line 2298
    .end local v4           #contact:Ljava/lang/StringBuilder;
    .end local v6           #i:I
    .restart local v7       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_6
    move-object v0, v7

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 2299
    if-eqz v9, :cond_4

    .line 2301
    check-cast v7, Lcom/google/android/mms/pdu/SendReq;

    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method

.method protected getMoveToGeneralBoxIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1705
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1706
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const v2, 0x7f0902e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1707
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1708
    const-string v1, "mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1710
    const-string v1, "projection"

    sget-object v2, Lcom/android/mms/ui/TraditionalList;->DELETE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    return-object v0
.end method

.method protected getMoveToSecureBoxIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1693
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1694
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const v2, 0x7f0902e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1695
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1696
    const-string v1, "mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1697
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1698
    const-string v1, "projection"

    sget-object v2, Lcom/android/mms/ui/TraditionalList;->DELETE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    return-object v0
.end method

.method initMessageList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1036
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->mOnListItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1037
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->mContextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1038
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1042
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 1043
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->createHeaderView()Landroid/view/View;

    move-result-object v1

    .line 1044
    .local v1, vheader:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1046
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->createHeaderView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1049
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TraditionalList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1050
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 674
    const-string v0, "TraditionalList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->gotoCorrectConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/TraditionalList;->IsFromBackey:Z

    .line 687
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "TraditionalList"

    const-string v1, "[onBackPress]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onBackPressed()V

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->cancelBackgroundWokers()V

    .line 341
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->closeContextMenu()V

    .line 382
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 36
    .parameter "item"

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 694
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 696
    const-string v2, "TraditionalList"

    const-string v9, "[onContextItemSelected] cursor not exist"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v2, 0x1

    .line 819
    :goto_0
    return v2

    .line 701
    :cond_0
    const/16 v29, 0x1

    .line 702
    .local v29, bSms:Z
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v10, v2

    .line 703
    .local v10, lThread_Id:J
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 704
    .local v5, lMsg_Id:J
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 705
    .local v7, stype:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 707
    .local v16, lDate:J
    const-string v2, "sms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    const/16 v29, 0x0

    .line 712
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 819
    invoke-super/range {p0 .. p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 715
    :sswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/TraditionalList;->openMessage(Landroid/database/Cursor;)V

    .line 716
    const/4 v2, 0x1

    goto :goto_0

    .line 718
    :sswitch_1
    const-wide/16 v3, 0x0

    .local v3, threadId:J
    move-object/from16 v2, p0

    .line 719
    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/TraditionalList;->editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V

    .line 720
    const/4 v2, 0x1

    goto :goto_0

    .line 722
    .end local v3           #threadId:J
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 725
    const/4 v2, 0x1

    goto :goto_0

    .line 730
    :cond_2
    if-eqz v29, :cond_3

    .line 732
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .line 738
    .local v35, uMsg:Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalList;->deleteMessage(Landroid/net/Uri;)V

    .line 740
    const/4 v2, 0x1

    goto :goto_0

    .line 736
    .end local v35           #uMsg:Landroid/net/Uri;
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .restart local v35       #uMsg:Landroid/net/Uri;
    goto :goto_1

    .line 742
    .end local v35           #uMsg:Landroid/net/Uri;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/mms/ui/TraditionalList;->RestoreMessageById(JZI)V

    .line 743
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    move-object/from16 v9, p0

    move-wide v12, v5

    move-object v14, v7

    .line 745
    invoke-direct/range {v9 .. v14}, Lcom/android/mms/ui/TraditionalList;->retryToSendMessage(JJLjava/lang/String;)V

    .line 746
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 748
    :sswitch_5
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/mms/ui/TraditionalList;->makeCall(Landroid/content/Intent;Z)V

    .line 749
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 751
    :sswitch_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/mms/ui/TraditionalList;->makeCall(Landroid/content/Intent;Z)V

    .line 752
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 754
    :sswitch_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/android/mms/ui/TraditionalList;->replyMessage(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 755
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 757
    :sswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/TraditionalList;->forwardMessage(Landroid/database/Cursor;)V

    .line 758
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 760
    :sswitch_9
    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 762
    .local v15, SMSBody:Ljava/lang/String;
    if-eqz v29, :cond_4

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v18

    move-wide v12, v5

    move-object v14, v7

    invoke-static/range {v9 .. v18}, Lcom/android/mms/ui/MessageUtils;->MyTaskCollectIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v32

    .line 778
    .local v32, intent1:Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalList;->startActivity(Landroid/content/Intent;)V

    .line 779
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 769
    .end local v32           #intent1:Landroid/content/Intent;
    :cond_4
    const/16 v2, 0x11

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 770
    .local v25, MMSlDate:J
    const-wide/16 v12, 0x3e8

    mul-long v25, v25, v12

    .line 771
    const/16 v2, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v2, v9}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v24

    .line 775
    .local v24, Subject:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v27

    move-wide/from16 v19, v10

    move-wide/from16 v21, v5

    move-object/from16 v23, v7

    invoke-static/range {v18 .. v27}, Lcom/android/mms/ui/MessageUtils;->MyTaskCollectIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v32

    .restart local v32       #intent1:Landroid/content/Intent;
    goto :goto_2

    .line 781
    .end local v15           #SMSBody:Ljava/lang/String;
    .end local v24           #Subject:Ljava/lang/String;
    .end local v25           #MMSlDate:J
    .end local v32           #intent1:Landroid/content/Intent;
    :sswitch_a
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v31

    .line 782
    .local v31, intent:Landroid/content/Intent;
    new-instance v30, Landroid/os/Bundle;

    invoke-direct/range {v30 .. v30}, Landroid/os/Bundle;-><init>()V

    .line 783
    .local v30, bundle:Landroid/os/Bundle;
    if-eqz v31, :cond_5

    .line 785
    const-string v2, "is_phoneNum"

    const-string v9, "is_phoneNum"

    const/4 v12, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    const-string v2, "address"

    const-string v9, "address"

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/TraditionalList;->showDialog(ILandroid/os/Bundle;)Z

    .line 789
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 792
    .end local v30           #bundle:Landroid/os/Bundle;
    .end local v31           #intent:Landroid/content/Intent;
    :sswitch_b
    new-instance v28, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v8}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 793
    .local v28, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/TraditionalListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v34

    .line 794
    .local v34, msg:Lcom/android/mms/msg/AbstractMessage;
    invoke-virtual/range {v34 .. v34}, Lcom/android/mms/msg/AbstractMessage;->getMessageSize()I

    move-result v20

    move-object/from16 v18, p0

    move-object/from16 v19, v8

    move-wide/from16 v21, v5

    move-object/from16 v23, v7

    invoke-static/range {v18 .. v23}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 796
    .local v33, messageDetails:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0900b4

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v9, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v2, v9, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 802
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 806
    .end local v28           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v33           #messageDetails:Ljava/lang/String;
    .end local v34           #msg:Lcom/android/mms/msg/AbstractMessage;
    :sswitch_c
    new-instance v28, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v8}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 807
    .restart local v28       #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/TraditionalListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v34

    .line 808
    .restart local v34       #msg:Lcom/android/mms/msg/AbstractMessage;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/TraditionalList;->lockMessage(Lcom/android/mms/msg/AbstractMessage;Z)V

    .line 809
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 813
    .end local v28           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v34           #msg:Lcom/android/mms/msg/AbstractMessage;
    :sswitch_d
    new-instance v28, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v8}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 814
    .restart local v28       #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/TraditionalListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v34

    .line 815
    .restart local v34       #msg:Lcom/android/mms/msg/AbstractMessage;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/TraditionalList;->lockMessage(Lcom/android/mms/msg/AbstractMessage;Z)V

    .line 816
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 712
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_5
        0x6 -> :sswitch_a
        0x35 -> :sswitch_6
        0x46 -> :sswitch_3
        0x47 -> :sswitch_1
        0x48 -> :sswitch_4
        0x49 -> :sswitch_b
        0x4b -> :sswitch_c
        0x4c -> :sswitch_d
        0x4d -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 212
    const-string v2, "TraditionalList"

    const-string v3, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    if-eqz p1, :cond_0

    .line 217
    const-string v2, "category"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, categoryId:I
    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 219
    const-string v2, "folder"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    .line 228
    :goto_0
    new-instance v2, Lcom/android/mms/ui/TraditionalList$UIHandler;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/TraditionalList$UIHandler;-><init>(Lcom/android/mms/ui/TraditionalList;Lcom/android/mms/ui/TraditionalList$1;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    .line 229
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->initTitleLayout()V

    .line 230
    new-instance v2, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    invoke-direct {v2, p0, p0}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;-><init>(Lcom/android/mms/ui/TraditionalList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    .line 232
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->mPhoneIdleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/TraditionalList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    new-instance v2, Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/TraditionalListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    .line 234
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->initMessageList()V

    .line 235
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    .line 236
    return-void

    .line 223
    .end local v0           #categoryId:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 224
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "category"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .restart local v0       #categoryId:I
    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 226
    const-string v2, "folder"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onDestroy()V

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalListAdapter;->close()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mPhoneIdleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mPhoneIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    if-eqz v0, :cond_2

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_2
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 242
    const-string v0, "TraditionalList"

    const-string v1, "onNewIntent>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/TraditionalList;->m_IsFromHome:Z

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 511
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 562
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 518
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/TraditionalList;->switchFolder(I)V

    goto :goto_0

    .line 521
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 533
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    const-string v2, "title"

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    :goto_1
    const-string v2, "uri"

    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 539
    const-string v2, "projection"

    sget-object v3, Lcom/android/mms/ui/TraditionalList;->DELETE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalList;->addQueryLimitExtra(Landroid/content/Intent;)V

    .line 542
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/TraditionalList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 524
    :pswitch_0
    const-string v2, "title"

    const v3, 0x7f090288

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 527
    :pswitch_1
    const-string v2, "title"

    const v3, 0x7f090334

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 530
    :pswitch_2
    const-string v2, "title"

    const v3, 0x7f0902d2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 536
    :cond_0
    const-string v2, "title"

    const v3, 0x7f09010c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 545
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/TraditionalList;->confirmDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 548
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->retrySendAllMessage()V

    goto :goto_0

    .line 559
    :sswitch_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TraditionalList;->showDialog(I)V

    goto/16 :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x14 -> :sswitch_4
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
    .end sparse-switch

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onPause()V

    .line 287
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->cancelBackgroundWokers()V

    .line 288
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/TraditionalList;->m_IsFromHome:Z

    .line 293
    sget-object v0, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "TraditionalList"

    const-string v1, "[onPause] not in general box, need to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->finish()V

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v0}, Lcom/android/mms/category/CategorySelector;->dismissDialog()V

    .line 307
    :cond_1
    return-void

    .line 301
    :cond_2
    iput-boolean v1, p0, Lcom/android/mms/ui/TraditionalList;->m_IsFromHome:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/16 v5, 0x67

    const/4 v4, 0x0

    .line 413
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 415
    const v2, 0x7f09010e

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020117

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/TraditionalListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 420
    iget v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    if-ne v2, v8, :cond_0

    .line 422
    const/16 v2, 0x34

    const v3, 0x7f0900cb

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02012f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 425
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    if-ne v2, v5, :cond_1

    .line 427
    const/16 v2, 0x32

    const v3, 0x7f0902ff

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020121

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 430
    :cond_1
    const/4 v2, 0x3

    const v3, 0x20c01fc

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020121

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 432
    iget v2, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    if-eq v2, v5, :cond_2

    .line 434
    sget-object v2, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2, v3}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 436
    const v2, 0x7f09028a

    invoke-interface {p1, v4, v7, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02011a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->allowFolderSwitch()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    const/16 v2, 0x33

    const v3, 0x7f09033e

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020138

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 460
    .local v1, sub:Landroid/view/SubMenu;
    const/16 v2, 0x64

    const v3, 0x7f09033f

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 461
    const v2, 0x7f090340

    invoke-interface {v1, v4, v8, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 462
    const/16 v2, 0x68

    const v3, 0x7f090341

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 463
    const/16 v2, 0x66

    const v3, 0x7f090134

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 464
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getDeletedItemsCount()I

    move-result v0

    .line 467
    .local v0, iDeleteItemCount:I
    if-lez v0, :cond_3

    .line 468
    const v2, 0x7f0902fe

    invoke-interface {v1, v4, v5, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 470
    .end local v0           #iDeleteItemCount:I
    :cond_3
    sget-object v2, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2, v3}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 472
    const/4 v2, 0x6

    const v3, 0x7f0901d3

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 476
    .end local v1           #sub:Landroid/view/SubMenu;
    :cond_4
    sget-object v2, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2, v3}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 478
    const/16 v2, 0x10

    const v3, 0x7f090336

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02011f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 482
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->allowBackupMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 484
    const/16 v2, 0x9

    const v3, 0x7f09028b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f02011e

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 485
    .restart local v1       #sub:Landroid/view/SubMenu;
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/TraditionalListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 487
    const/16 v2, 0xa

    const v3, 0x7f09028b

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 489
    :cond_6
    const/16 v2, 0xb

    const v3, 0x7f09028c

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 490
    const/16 v2, 0xc

    const v3, 0x7f09028d

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 493
    .end local v1           #sub:Landroid/view/SubMenu;
    :cond_7
    const/4 v2, 0x4

    const v3, 0x20c0163

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020136

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 495
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 497
    const/16 v2, 0xd

    const v3, 0x7f0902d2

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02013c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 500
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortConversation()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 502
    const/16 v2, 0x14

    const v3, 0x7f0903c7

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02013c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 504
    :cond_9
    const/4 v2, 0x1

    return v2

    .line 439
    :cond_a
    sget-object v2, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2, v3}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 441
    const v2, 0x7f090289

    invoke-interface {p1, v4, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02011a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 444
    :cond_b
    sget-object v2, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2, v3}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    const/16 v2, 0x11

    const v3, 0x7f090338

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020129

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 448
    .restart local v1       #sub:Landroid/view/SubMenu;
    const v2, 0x7f09028a

    invoke-interface {v1, v4, v7, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 449
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    const v2, 0x7f090289

    invoke-interface {v1, v4, v6, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 249
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onResume()V

    .line 251
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->gotoCorrectConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/TraditionalList;->m_IsFromHome:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/ui/TraditionalList;->IsFromBackey:Z

    if-eqz v0, :cond_4

    .line 258
    :cond_1
    invoke-static {}, Lcom/android/mms/category/CategorySelectorAdapter;->getCurrentCategory()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 259
    sget-boolean v0, Lcom/android/mms/ui/TraditionalList;->IsFromBackey:Z

    if-eqz v0, :cond_2

    .line 261
    iput v1, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    .line 263
    :cond_2
    sput-boolean v2, Lcom/android/mms/ui/TraditionalList;->IsFromBackey:Z

    .line 270
    :goto_1
    iput-boolean v2, p0, Lcom/android/mms/ui/TraditionalList;->m_IsFromHome:Z

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    .line 276
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setCategorySwitcher()V

    .line 277
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/TraditionalList;->buildContentUri(ILcom/android/mms/category/Category;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TraditionalList;->startAsyncQuery(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->setTitle()V

    .line 280
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setFolder()V

    goto :goto_0

    .line 267
    :cond_4
    invoke-static {v2}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 268
    iput v1, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    .line 835
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 836
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 837
    const-string v2, "category"

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3}, Lcom/android/mms/category/Category;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 838
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-class v4, Lcom/android/mms/ui/MessageSearch;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 839
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TraditionalList;->startActivity(Landroid/content/Intent;)V

    .line 841
    const/4 v2, 0x1

    return v2
.end method

.method public setRightButtonImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "composeBtn"

    .prologue
    .line 923
    const v0, 0x7f020010

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 924
    new-instance v0, Lcom/android/mms/ui/TraditionalList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TraditionalList$6;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    return-void
.end method

.method public setTitle()V
    .locals 2

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->getPrimaryTitle()Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 965
    :cond_0
    return-void
.end method

.method protected startAsyncQuery(Z)V
    .locals 19
    .parameter "bQueryMore"

    .prologue
    .line 1721
    const/4 v7, 0x0

    .line 1722
    .local v7, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 1724
    const-string v7, " ( transport_type != \'mms\' OR thread_id > 0 ) "

    .line 1728
    :cond_0
    :goto_0
    const-string v2, "TraditionalList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startAsyncQuery] start to query, m_CurrentUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/ui/TraditionalListAdapter;->isQuerying:Z

    .line 1732
    if-eqz p1, :cond_1

    .line 1734
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    add-int/lit16 v2, v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    .line 1736
    :cond_1
    const-string v2, "TraditionalList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startAsyncQuery] m_nCurrentQueryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalized_date DESC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1747
    .local v18, orderBy:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1749
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/TraditionalList;->ModifySortCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    .line 1750
    .local v9, SortCommand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    .end local v9           #SortCommand:Ljava/lang/String;
    :goto_2
    return-void

    .line 1725
    .end local v18           #orderBy:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_0

    .line 1726
    const-string v7, "thread_id > 0"

    goto/16 :goto_0

    .line 1744
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date2 DESC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #orderBy:Ljava/lang/String;
    goto :goto_1

    .line 1754
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    const/16 v11, 0xc8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    sget-object v14, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v7

    invoke-virtual/range {v10 .. v17}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected startQueryConversation()V
    .locals 1

    .prologue
    .line 1716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalList;->startAsyncQuery(Z)V

    .line 1717
    return-void
.end method

.method protected startQueryCount()V
    .locals 10

    .prologue
    .line 1760
    const/4 v5, 0x0

    .line 1761
    .local v5, selection:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1763
    const-string v5, " ( transport_type != \'mms\' OR thread_id > 0 ) "

    .line 1770
    :cond_0
    :goto_0
    const-string v0, "TraditionalList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startQueryCount] start to count, m_CurrentUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/TraditionalListAdapter;->isQuerying:Z

    .line 1772
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I

    add-int/lit8 v8, v0, 0x1

    .line 1773
    .local v8, nCount:I
    const-string v0, "TraditionalList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startQueryCount] nCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList;->mQueryHandler:Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;

    const/16 v1, 0xca

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " normalized_date DESC "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->getQueryLimit(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    return-void

    .line 1765
    .end local v8           #nCount:I
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 1767
    const-string v5, "thread_id > 0"

    goto :goto_0
.end method

.method switchCategory(Lcom/android/mms/category/Category;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 860
    iget v0, p0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/TraditionalList;->buildContentUri(ILcom/android/mms/category/Category;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalList;->m_CurrentUri:Landroid/net/Uri;

    .line 861
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    .line 862
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 866
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalList;->startAsyncQuery(Z)V

    .line 867
    invoke-direct {p0}, Lcom/android/mms/ui/TraditionalList;->setFolder()V

    .line 868
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->setTitle()V

    .line 869
    return-void
.end method

.method protected updateStatusNotification()V
    .locals 2

    .prologue
    .line 2248
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 2249
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 2250
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 2251
    const/4 v0, 0x0

    const v1, 0x7f090010

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TraditionalList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessagingShortcut;->updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;)V

    .line 2252
    return-void
.end method
