.class public Lcom/android/htccontacts/ContactDetailMailActivity;
.super Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.source "ContactDetailMailActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;,
        Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;,
        Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;,
        Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;,
        Lcom/android/htccontacts/ContactDetailMailActivity$EmailAddressPickedListener;,
        Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;,
        Lcom/android/htccontacts/ContactDetailMailActivity$CONCRETE_COLUMNS;,
        Lcom/android/htccontacts/ContactDetailMailActivity$ACC_COLUMNS;,
        Lcom/android/htccontacts/ContactDetailMailActivity$MSG_COLUMNS;,
        Lcom/android/htccontacts/ContactDetailMailActivity$MailTable;
    }
.end annotation


# static fields
.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final DIALOG_ADD_EMAIL:I = 0x1388

.field private static final DIALOG_PICK_EMAIL:I = 0x1389

.field private static final IDX_ACCOUNT:I = 0x7

.field private static final IDX_DATE:I = 0x4

.field private static final IDX_FLAG:I = 0x6

.field private static final IDX_FROM:I = 0x1

.field private static final IDX_FROM_EMAIL:I = 0x2

.field private static final IDX_GROUP:I = 0xa

.field private static final IDX_ID:I = 0x0

.field private static final IDX_IMPORTANCE:I = 0xd

.field private static final IDX_INCLUDE_ATTACHMENT:I = 0xb

.field private static final IDX_MAILBOX_ID:I = 0x8

.field private static final IDX_MAIL_ACT:I = 0xc

.field private static final IDX_MESSAGE_CLASS:I = 0xe

.field private static final IDX_PROVIDER:I = 0xf

.field private static final IDX_READ:I = 0x5

.field private static final IDX_SUBJECT:I = 0x3

.field private static final IDX_SUBJECT_TYPE:I = 0x9

.field private static final MENU_CLEAN_FLAG:I = 0xe

.field private static final MENU_DELETE:I = 0x4

.field private static final MENU_EDIT:I = 0x3

.field private static final MENU_FLAG_THIS_MESSAGE:I = 0x9

.field private static final MENU_FORWARD:I = 0xc

.field private static final MENU_MARK_READ:I = 0xd

.field private static final MENU_MARK_UNREAD:I = 0x8

.field private static final MENU_MOVE_TO:I = 0x7

.field private static final MENU_OEPN:I = 0x5

.field private static final MENU_REPLY:I = 0xa

.field private static final MENU_REPLY_ALL:I = 0xb

.field private static final MENU_SEE_CONVERSATION:I = 0x6

.field private static final MENU_SEND_EMAIL:I = 0x1

.field private static final MENU_SYNC_EMAIL:I = 0x2

.field private static final PROJECTIONS:[Ljava/lang/String; = null

.field private static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactDetailMailActivity"

.field private static nDelayRefreshMail:I


# instance fields
.field private independent:Z

.field private independentChatCapability:I

.field private independentEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private independentMyPhonebookType:Z

.field private independentName:Ljava/lang/String;

.field private independentNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private independentPhoto:Landroid/graphics/Bitmap;

.field private independentPresence:I

.field private independentSimType:Z

.field private independentUnknown:Z

.field private mAddEditText:Landroid/widget/EditText;

.field private mContentObserverMail:Landroid/database/ContentObserver;

.field private mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

.field private mEmptyTextView:Landroid/widget/TextView;

.field public mIsContactDirty:Z

.field public mIsMailDirty:Z

.field private mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

.field private mPersonId:J

.field private mQueryHandler:Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowAddEmail:Z

.field private mShowSendEmail:Z

.field private mWhereClause:Ljava/lang/String;

.field private mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

.field private mbContentObserverMailRegistered:Z

.field private mrRefreshMail:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "messages._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messages._from AS _from"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "messages._fromEmail AS _fromEmail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "messages._subject AS _subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messages._internaldate AS _date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "messages._read AS _read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messages._flags AS _flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "messages._account AS _account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "messages._mailboxId AS _mailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messages._subjtype AS _subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "messages._group AS _group"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messages._incAttachment AS _incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "messages._mailAct AS _mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "messages._importance AS _importance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "messages._messageClassInt AS _messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "accounts._provider AS _provider"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactDetailMailActivity;->PROJECTIONS:[Ljava/lang/String;

    .line 198
    const/16 v0, 0x64

    sput v0, Lcom/android/htccontacts/ContactDetailMailActivity;->nDelayRefreshMail:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;-><init>()V

    .line 199
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    .line 204
    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentName:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentPhoto:Landroid/graphics/Bitmap;

    .line 206
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentSimType:Z

    .line 207
    iput v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentPresence:I

    .line 208
    iput v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentChatCapability:I

    .line 209
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentMyPhonebookType:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentUnknown:Z

    .line 211
    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    .line 212
    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentNumberList:Ljava/util/ArrayList;

    .line 1586
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ContactDetailMailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->rebuildEntries()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ContactDetailMailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ContactDetailMailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mrRefreshMail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/htccontacts/ContactDetailMailActivity;->nDelayRefreshMail:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailMailActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailMailActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 7

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v6

    .line 1164
    .local v6, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private isDraft(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 832
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 833
    .local v1, item:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 834
    .local v0, isDraft:Z
    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v2, :cond_0

    .line 836
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    check-cast v1, Landroid/database/Cursor;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->isDraft(Landroid/database/Cursor;)Z

    move-result v0

    .line 839
    :cond_0
    return v0
.end method

.method private rebuildEntries()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 725
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z

    .line 726
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z

    .line 728
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    if-eqz v0, :cond_1

    .line 729
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z

    if-eqz v0, :cond_2

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/InsertNewListAdapter;->setInsertViewShow(Z)V

    .line 735
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->buildQueryString()V

    .line 736
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startQuery()V

    .line 737
    return-void

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/InsertNewListAdapter;->setInsertViewShow(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected IsExchangeAccount(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 924
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 925
    .local v1, item:Ljava/lang/Object;
    const v3, 0x7f0a00fe

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, exchange:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    check-cast v1, Landroid/database/Cursor;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getProvider(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public afterDelete(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 1579
    return-void
.end method

.method public beforeDelete()V
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 1584
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    return-void
.end method

.method protected buildQueryString()V
    .locals 12

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 741
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v10, " _fromEmail in ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-boolean v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v10, :cond_7

    .line 744
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 745
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 746
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 750
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 751
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v8, sb:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentNumberList:Ljava/util/ArrayList;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentNumberList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_f

    .line 753
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentNumberList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 754
    .local v7, number:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 756
    .local v6, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_4

    .line 757
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 758
    .local v0, c:C
    const/16 v10, 0x30

    if-lt v0, v10, :cond_1

    const/16 v10, 0x39

    if-le v0, v10, :cond_2

    :cond_1
    const/16 v10, 0x2b

    if-ne v0, v10, :cond_3

    .line 759
    :cond_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 762
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "+86"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 763
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 765
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 766
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@169.com"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 774
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #length:I
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_7
    iget-object v10, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 775
    .local v5, infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v10, v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 778
    .end local v5           #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :cond_8
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 779
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    iget-object v10, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 781
    .restart local v5       #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v7, v5, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 782
    .restart local v7       #number:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 784
    .restart local v6       #length:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v6, :cond_c

    .line 785
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 786
    .restart local v0       #c:C
    const/16 v10, 0x30

    if-lt v0, v10, :cond_9

    const/16 v10, 0x39

    if-le v0, v10, :cond_a

    :cond_9
    const/16 v10, 0x2b

    if-ne v0, v10, :cond_b

    .line 787
    :cond_a
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 784
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 790
    .end local v0           #c:C
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_d

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "+86"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 791
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 793
    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_e

    .line 794
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@169.com"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    .line 802
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #infoEntry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v6           #length:I
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_10

    .line 803
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 805
    :cond_10
    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;

    .line 807
    return-void
.end method

.method protected doAddEmail()V
    .locals 1

    .prologue
    .line 1068
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->showDialog(I)V

    .line 1069
    return-void
.end method

.method protected doDeleteEmail(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 858
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->deleteMail(Landroid/database/Cursor;)I

    .line 861
    :cond_0
    return-void
.end method

.method protected doFlagMessage(Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "cursor"
    .parameter "flag"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 874
    if-eqz p2, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->flagThisMessage(Landroid/database/Cursor;)I

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->cleanFlag(Landroid/database/Cursor;)I

    goto :goto_0
.end method

.method protected doForward(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getForwardIntent(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 917
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 921
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doMarkEmail(Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "cursor"
    .parameter "mark"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 884
    if-eqz p2, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->markRead(Landroid/database/Cursor;)I

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->markUnread(Landroid/database/Cursor;)I

    goto :goto_0
.end method

.method protected doMoveTo(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 894
    return-void
.end method

.method protected doOpenEmail(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "position"

    .prologue
    const v3, 0x20200fd

    .line 844
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v2, p2}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 845
    .local v1, item:Ljava/lang/Object;
    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 846
    check-cast v1, Landroid/database/Cursor;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doOpenEmailAtCursor(Landroid/database/Cursor;)V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 847
    .restart local v1       #item:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 850
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public doOpenEmailAtCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getOpenMailIntent(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 1074
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1078
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doRefreshMail()V
    .locals 3

    .prologue
    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC"

    const-string v2, "content://mail/accounts/9223372036854775807"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1083
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1084
    return-void
.end method

.method protected doReply(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 897
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getReplyIntent(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 899
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 903
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doReplyAll(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 906
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getReplyAllIntent(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 908
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 912
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doSeeConversation(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getSeeConversationIntent(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 866
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 870
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected doSendEmail()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 935
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 937
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v6, 0x0

    .line 938
    .local v6, size:I
    iget-boolean v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 939
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 943
    :goto_0
    if-le v6, v8, :cond_1

    .line 944
    const/16 v7, 0x1389

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ContactDetailMailActivity;->removeDialog(I)V

    .line 945
    const/16 v7, 0x1389

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/ContactDetailMailActivity;->showDialog(I)V

    .line 990
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .end local v6           #size:I
    :goto_1
    return-void

    .line 941
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .restart local v6       #size:I
    :cond_0
    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 956
    :cond_1
    if-ne v6, v8, :cond_6

    .line 957
    const/4 v5, 0x0

    .line 958
    .local v5, name:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 959
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentName:Ljava/lang/String;

    .line 960
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 961
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 976
    :goto_2
    const-string v7, "mailto:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 977
    .local v4, mailTo:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 980
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 987
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mailTo:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 988
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "ContactDetailMailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSendEmail - Database column not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 964
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #size:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #name:Ljava/lang/String;
    goto :goto_2

    .line 967
    :cond_3
    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 968
    .local v2, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v5, ""

    .line 969
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 970
    iget-object v7, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 968
    :cond_4
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    goto :goto_3

    .line 973
    :cond_5
    iget-object v5, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    goto :goto_2

    .line 984
    .end local v2           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v5           #name:Ljava/lang/String;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "mailto:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 985
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 1157
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-wide v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 1158
    .local v0, contactId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1159
    .local v3, contactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v4
.end method

.method public getMailListAdapter()Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleStuffAfterOnResume()V
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 427
    return-void
.end method

.method protected isFlag(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 821
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 822
    .local v1, item:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 823
    .local v0, flag:I
    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    check-cast v1, Landroid/database/Cursor;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getFlag(Landroid/database/Cursor;)I

    move-result v0

    .line 828
    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRead(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 810
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 811
    .local v0, item:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 812
    .local v1, read:I
    instance-of v2, v0, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 813
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v2, :cond_0

    .line 814
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    check-cast v0, Landroid/database/Cursor;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getRead(Landroid/database/Cursor;)I

    move-result v1

    .line 817
    :cond_0
    if-lez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 470
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 496
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 474
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v4, 0x2f1

    if-ne v4, p1, :cond_2

    .line 477
    const-string v4, "pure_flickr"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 481
    .local v0, bPureFlickr:Z
    const-string v4, "rollback_contact"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 485
    .local v1, bShouldRollBack:Z
    if-eq v6, v0, :cond_1

    if-ne v6, v1, :cond_2

    .line 486
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 487
    .local v3, uriFixed:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 491
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/HtcContactInfo;->forceContactChange(Landroid/net/Uri;)V

    .line 495
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v3           #uriFixed:Landroid/net/Uri;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContactChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "infoReadyType"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    .line 236
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "ENTITY_QUERY_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->rebuildEntries()V

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    .line 243
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 640
    const/4 v4, 0x0

    .line 641
    .local v4, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    const/4 v1, 0x0

    .line 643
    .local v1, cursor:Landroid/database/Cursor;
    if-nez p1, :cond_0

    move v5, v6

    .line 712
    :goto_0
    return v5

    .line 647
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    iget v8, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v8}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 654
    .local v3, item:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 655
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v5, :cond_1

    move-object v1, v3

    .line 656
    check-cast v1, Landroid/database/Cursor;

    .line 660
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    move v5, v7

    .line 712
    goto :goto_0

    .line 648
    .end local v3           #item:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 649
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v5, "ContactDetailMailActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 650
    goto :goto_0

    .line 662
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v3       #item:Ljava/lang/Object;
    :pswitch_0
    iget-object v5, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v6, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v5, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->doOpenEmail(Landroid/view/View;I)V

    goto :goto_1

    .line 666
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doDeleteEmail(Landroid/database/Cursor;)V

    goto :goto_1

    .line 670
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doSeeConversation(Landroid/database/Cursor;)V

    goto :goto_1

    .line 674
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doMoveTo(Landroid/database/Cursor;)V

    goto :goto_1

    .line 678
    :pswitch_4
    invoke-virtual {p0, v1, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->doMarkEmail(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 682
    :pswitch_5
    invoke-virtual {p0, v1, v7}, Lcom/android/htccontacts/ContactDetailMailActivity;->doMarkEmail(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 686
    :pswitch_6
    invoke-virtual {p0, v1, v7}, Lcom/android/htccontacts/ContactDetailMailActivity;->doFlagMessage(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 690
    :pswitch_7
    invoke-virtual {p0, v1, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->doFlagMessage(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 694
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doReply(Landroid/database/Cursor;)V

    goto :goto_1

    .line 698
    :pswitch_9
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doReplyAll(Landroid/database/Cursor;)V

    goto :goto_1

    .line 702
    :pswitch_a
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->doForward(Landroid/database/Cursor;)V

    goto :goto_1

    .line 660
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->setContentView(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->setTitleBar()V

    .line 282
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 284
    const-string v1, "independent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    .line 285
    const-string v1, "independentName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentName:Ljava/lang/String;

    .line 286
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentPhoto:Landroid/graphics/Bitmap;

    .line 287
    const-string v1, "SimType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentSimType:Z

    .line 288
    const-string v1, "Presence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentPresence:I

    .line 289
    const-string v1, "ChatCapability"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentChatCapability:I

    .line 290
    const-string v1, "MyPhonebookType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentMyPhonebookType:Z

    .line 291
    const-string v1, "independentUnknown"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentUnknown:Z

    .line 292
    const-string v1, "independentEmailList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    .line 293
    const-string v1, "independentNumberList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentNumberList:Ljava/util/ArrayList;

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 306
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mResolver:Landroid/content/ContentResolver;

    .line 307
    new-instance v1, Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;

    .line 310
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 311
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mEmptyTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 314
    new-instance v1, Lcom/android/htccontacts/ContactDetailMailActivity$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactDetailMailActivity$1;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mrRefreshMail:Ljava/lang/Runnable;

    .line 323
    new-instance v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    .line 338
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mbContentObserverMailRegistered:Z

    .line 339
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mbContentObserverMailRegistered:Z

    if-nez v1, :cond_1

    .line 340
    const-string v1, "ContactDetailMailActivity"

    const-string v2, "doRefreshMail mResolver.registerContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/util/Constants;->MAIL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 343
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mbContentObserverMailRegistered:Z

    .line 348
    :cond_1
    iput-object v6, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 366
    new-instance v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x209000d

    invoke-direct {v1, p0, v2, v3, v6}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    .line 368
    new-instance v1, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-direct {v1, v2, v5, v4}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;ZZ)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 369
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v7, 0x0

    .line 586
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .local v2, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget v6, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 593
    .local v4, obj:Ljava/lang/Object;
    instance-of v5, v4, Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 598
    check-cast v4, Landroid/database/Cursor;

    .end local v4           #obj:Ljava/lang/Object;
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 601
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 607
    :goto_0
    const/4 v5, 0x5

    const v6, 0x7f0a02d4

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 609
    const/4 v5, 0x6

    const v6, 0x7f0a02d5

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 611
    const/4 v5, 0x4

    const v6, 0x7f0a02d6

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 613
    const/4 v5, 0x1

    iget v6, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->isRead(I)Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 615
    const/16 v5, 0x8

    const v6, 0x7f0a02d7

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 621
    :goto_1
    iget v5, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->isDraft(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 623
    const/16 v5, 0xa

    const v6, 0x7f0a02d9

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 625
    const/16 v5, 0xb

    const v6, 0x7f0a02da

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 627
    const/16 v5, 0xc

    const v6, 0x7f0a02db

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 631
    .end local v2           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "ContactDetailMailActivity"

    const-string v6, "bad menuInfoIn"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 603
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    const v5, 0x7f0a016e

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_0

    .line 618
    :cond_2
    const/16 v5, 0xd

    const v6, 0x7f0a02d8

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    .line 1031
    const/4 v2, 0x0

    .line 1032
    .local v2, d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 1033
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v8, 0x1389

    if-ne v8, p1, :cond_3

    .line 1034
    const/4 v6, 0x0

    .line 1035
    .local v6, labelArray:[Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 1036
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1037
    .local v7, size:I
    new-array v6, v7, [Ljava/lang/String;

    .line 1038
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1039
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v4

    .line 1038
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1042
    .end local v4           #i:I
    .end local v7           #size:I
    :cond_0
    iget-object v8, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1044
    .restart local v7       #size:I
    new-array v6, v7, [Ljava/lang/String;

    .line 1045
    iget-object v3, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    .line 1046
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 1048
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v8, v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    aput-object v8, v6, v4

    .line 1046
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1051
    .end local v3           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "ic_dialog_menu_generic"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1052
    .local v5, iconResId:I
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v8, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;

    invoke-direct {v8, p0, v6}, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v6, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1054
    const v8, 0x7f0a01f5

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1055
    if-lez v5, :cond_2

    .line 1058
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1060
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v4           #i:I
    .end local v5           #iconResId:I
    .end local v6           #labelArray:[Ljava/lang/String;
    .end local v7           #size:I
    :cond_3
    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 500
    const v0, 0x7f0a017d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 502
    const/4 v0, 0x2

    const v1, 0x7f0a01f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 504
    const/4 v0, 0x3

    const v1, 0x7f0a013c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 506
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 507
    return v3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDestroy()V

    .line 443
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/InsertNewListAdapter;->close()V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 449
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mbContentObserverMailRegistered:Z

    if-eqz v1, :cond_1

    .line 450
    const-string v1, "ContactDetailMailActivity"

    const-string v2, "doRefreshMail mResolver.unregisterContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mbContentObserverMailRegistered:Z

    .line 453
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mContentObserverMail:Landroid/database/ContentObserver;

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 457
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->beforeDelete()V

    .line 459
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-eqz v1, :cond_3

    .line 463
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 466
    :cond_3
    return-void
.end method

.method public onDetailInfoInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDetailInfoInit()V

    .line 220
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    if-eq v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    if-ne v2, v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->rebuildEntries()V

    .line 224
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    .line 228
    :cond_1
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 719
    invoke-virtual {p0, p2, p3}, Lcom/android/htccontacts/ContactDetailMailActivity;->doOpenEmail(Landroid/view/View;I)V

    .line 720
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 575
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 546
    :pswitch_0
    const-string v4, "ANALYTIC_HtcContacts"

    const-string v5, "[ContactDetailMailActivity]Send mail"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->doSendEmail()V

    goto :goto_0

    .line 551
    :pswitch_1
    const-string v4, "ANALYTIC_HtcContacts"

    const-string v5, "[ContactDetailMailActivity]Refresh mail"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->doRefreshMail()V

    goto :goto_0

    .line 556
    :pswitch_2
    const-string v4, "ANALYTIC_HtcContacts"

    const-string v5, "[ContactDetailMailActivity]Edit contact"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v2

    .line 559
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 564
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v4, "ANALYTIC_HtcContacts"

    const-string v5, "[ContactDetailMailActivity]Delete contact"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 567
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 569
    .local v1, d:Landroid/app/Dialog;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onPause()V

    .line 438
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1065
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 512
    const/4 v0, 0x1

    .line 513
    .local v0, bEditable:Z
    iget-boolean v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v4, :cond_3

    .line 514
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 515
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 516
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 534
    :goto_0
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v2, :cond_1

    .line 535
    const/4 v0, 0x0

    .line 537
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    return v3

    .line 518
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 519
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 523
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-object v4, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 524
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 525
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isAllSocialNetworkAccountTyupe()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :goto_2
    goto :goto_0

    .line 527
    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    move v0, v3

    .line 530
    goto :goto_2
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 374
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onResume()V

    .line 376
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    if-eq v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    if-ne v2, v0, :cond_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->rebuildEntries()V

    .line 380
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    .line 381
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z

    if-eqz v0, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->rebuildEntries()V

    .line 414
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    .line 415
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsContactDirty:Z

    .line 416
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentName:Ljava/lang/String;

    iget v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentPresence:I

    iget v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentChatCapability:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getTitleString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentPhoto:Landroid/graphics/Bitmap;

    iget-boolean v7, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentSimType:Z

    iget-boolean v8, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentMyPhonebookType:Z

    iget-boolean v9, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->independentUnknown:Z

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    .line 420
    :cond_2
    return-void
.end method

.method protected setAdapter(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 1093
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    if-nez v0, :cond_2

    .line 1094
    new-instance v0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x209000d

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    .line 1096
    new-instance v2, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;ZZ)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 1098
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1102
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1096
    goto :goto_0

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mCursorAdapter:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 253
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 254
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 255
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 271
    :cond_0
    return-void
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1087
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;->cancelOperation(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;

    sget-object v3, Lcom/android/htccontacts/util/Constants;->MAIL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/ContactDetailMailActivity;->PROJECTIONS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;

    const-string v7, "_date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactDetailMailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void
.end method
