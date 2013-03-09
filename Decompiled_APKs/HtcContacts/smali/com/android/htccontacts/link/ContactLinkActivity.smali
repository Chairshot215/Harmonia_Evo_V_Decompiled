.class public Lcom/android/htccontacts/link/ContactLinkActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;,
        Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;,
        Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;,
        Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;,
        Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;,
        Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    }
.end annotation


# static fields
.field private static final ACTION_PICK_ACCOUNT:I = 0x3

.field protected static CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field protected static final CONTACTS_SUMMARY_PROJECTION_ORG:[Ljava/lang/String; = null

.field private static final HANDLER_MSG_FINISH_SELF:I = 0x2

.field public static final ID_COLUMN:I = 0x0

.field private static final MENU_SET_NAME:I = 0x1

.field private static final MENU_SET_PHOTO:I = 0x0

.field private static final QUERY_TOKEN_LINKED:I = 0x2

.field private static final QUERY_TOKEN_SUGGEST:I = 0x1

.field private static final QUERY_TOKEN_SUGGEST_EXCEPTION:I = 0x3

.field protected static RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String; = null

.field protected static final RAW_RAWCONTACTS_PROJECTION_ORG:[Ljava/lang/String; = null

.field private static final REQUEST_CODE_CROP_ITEM_REQ:I = 0xf0003

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0xf0002

.field private static final TAG:Ljava/lang/String; = "ContactLinkActivity"

.field public static final TYPE_ALBUM:I = 0x4

.field public static final TYPE_CAMERA:I = 0x5

.field public static final TYPE_CLEAR:I = 0x4

.field public static final TYPE_LINK:I = 0x2

.field public static final TYPE_REMOVE:I = 0x6

.field public static final TYPE_SUGGEST:I = 0x1

.field public static final TYPE_TYPE:I = 0x3

.field private static final UPDATE_HEADER_MSG:I = 0x1

.field public static mCreateIcon:Landroid/graphics/Bitmap;


# instance fields
.field private ContactCardId:J

.field private cName:Landroid/database/Cursor;

.field private cPhoto:Landroid/database/Cursor;

.field private clPickName:Landroid/widget/AdapterView$OnItemClickListener;

.field private clPickPhoto:Landroid/widget/AdapterView$OnItemClickListener;

.field private dNameDirty:Z

.field private dPhoto:Landroid/app/Dialog;

.field private dPhotoDirty:Z

.field private isCancel:Z

.field private isClearSuggestion:Z

.field private isLinkedOneNow:Z

.field private isSNExisted:Z

.field private isSplitContact:Z

.field protected mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

.field private mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

.field private mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

.field private mAdapter_type:Lcom/android/htccontacts/link/LinkTypeListAdapter;

.field private mAddSuggestContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayLock:Ljava/lang/Object;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private mLinkOneHander:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

.field protected mListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

.field private mLookupUri:Landroid/net/Uri;

.field private mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;

.field private mNameCursorRegistered:Z

.field private mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

.field final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mPeople:Lcom/android/htccontacts/link/MergeContact;

.field private mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;

.field private mPhotoCursorRegistered:Z

.field private mPickLinkRawCtactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

.field private final mQueryRunnable:Ljava/lang/Runnable;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveLinkRawCtactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveSuggestContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mUIHandler:Landroid/os/Handler;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    .line 168
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contacts._id"

    aput-object v1, v0, v3

    const-string v1, "contacts.display_name"

    aput-object v1, v0, v4

    const-string v1, "contacts.starred"

    aput-object v1, v0, v5

    const-string v1, "contacts.photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->CONTACTS_SUMMARY_PROJECTION_ORG:[Ljava/lang/String;

    .line 181
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "account_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->RAW_RAWCONTACTS_PROJECTION_ORG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->clPickName:Landroid/widget/AdapterView$OnItemClickListener;

    .line 117
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->clPickPhoto:Landroid/widget/AdapterView$OnItemClickListener;

    .line 124
    iput-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dNameDirty:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhotoDirty:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mArrayLock:Ljava/lang/Object;

    .line 154
    iput-boolean v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isCancel:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z

    .line 206
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    .line 207
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    .line 212
    iput-boolean v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isLinkedOneNow:Z

    .line 1946
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$10;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$10;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;

    .line 1966
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$11;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$11;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryRunnable:Ljava/lang/Runnable;

    .line 216
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->RAW_RAWCONTACTS_PROJECTION_ORG:[Ljava/lang/String;

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    .line 217
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->CONTACTS_SUMMARY_PROJECTION_ORG:[Ljava/lang/String;

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->doUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->doCheckIfUndoAddLink()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isLinkedOneNow:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/link/ContactLinkActivity;JJIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p7}, Lcom/android/htccontacts/link/ContactLinkActivity;->queryRawContactsAtSameContacts(JJIJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateSelf()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/link/ContactLinkActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/link/ContactLinkActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->shouldShowPhotoOption()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkSuggestListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/LinkSuggestListAdapter;)Lcom/android/htccontacts/link/LinkSuggestListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkContactListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/LinkContactListAdapter;)Lcom/android/htccontacts/link/LinkContactListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->setLinkRawContacts()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/ContactLinkActivity;->needCreatePhotoDialog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->shouldAssginPhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/pickPhotoAdapter;)Lcom/android/htccontacts/link/pickPhotoAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->showPhotoPickerDialog()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoCursorRegistered:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/MergeContact;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->clPickPhoto:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhotoDirty:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->doPickPhotoAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->showNamePickerDialog()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->doPickPhotoCamera()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->resetDialog()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/ContactLinkActivity;->needCreateNameDialog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->clPickName:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickNameAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/pickNameAdapter;)Lcom/android/htccontacts/link/pickNameAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameCursorRegistered:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/htccontacts/link/ContactLinkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/widget/HeaderBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->processSuggestionAfterPressOk()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dNameDirty:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->processIntent()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->handleContactNotFound()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->applyBatchOperations()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateSelfBeforeFinish()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->notifyContactCard()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private applyBatchOperations()V
    .locals 7

    .prologue
    .line 1223
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1226
    const/16 v3, 0x32

    .line 1227
    .local v3, limit:I
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1228
    .local v0, OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1229
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1230
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1231
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1233
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1238
    .end local v0           #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1240
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1248
    .end local v3           #limit:I
    :cond_1
    return-void

    .line 1235
    .restart local v0       #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #limit:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1236
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    iget-object v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1245
    :cond_3
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .line 1241
    .end local v0           #OperationsPerTrans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v1

    .line 1243
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1245
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    goto :goto_2

    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v4
.end method

.method private chooseTypeListener(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, accoutType:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1570
    if-nez p1, :cond_1

    .line 1571
    const-string v0, "All"

    .line 1575
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.htccontacts.ACTION_PICK_BY_ACCOUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "contact_id"

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1577
    const-string v2, "account_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1580
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1573
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_type:Lcom/android/htccontacts/link/LinkTypeListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/LinkTypeListAdapter;->getAvailableAccount()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountType;

    iget-object v0, v2, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    goto :goto_0
.end method

.method private doCheckIfUndoAddLink()V
    .locals 5

    .prologue
    .line 531
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 532
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isCancel:Z

    .line 533
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 534
    .local v3, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 535
    .local v0, aRawContactId:J
    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->splitContact(J)V

    goto :goto_0

    .line 537
    .end local v0           #aRawContactId:J
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->doLinkPickContacts()V

    .line 539
    invoke-direct {p0, p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->showAsyncProgressBeforeFinish(Landroid/content/Context;)V

    .line 544
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    return-void

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->finish()V

    goto :goto_1
.end method

.method private doLinkPickContacts()V
    .locals 20

    .prologue
    .line 548
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v2, array1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, array2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 552
    .local v14, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 553
    .local v8, id:J
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-nez v17, :cond_3

    .line 555
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 556
    .local v10, id1:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 557
    .local v12, id2:J
    const-string v17, "ContactLinkActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-------LINK:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v16, Landroid/content/ContentValues;

    const/16 v17, 0x3

    invoke-direct/range {v16 .. v17}, Landroid/content/ContentValues;-><init>(I)V

    .line 559
    .local v16, values:Landroid/content/ContentValues;
    cmp-long v17, v10, v12

    if-eqz v17, :cond_1

    .line 560
    sget-object v17, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v18, "aggregation_exceptions_manual"

    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const-wide/16 v18, 0x1

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 561
    .local v15, updateUri:Landroid/net/Uri;
    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 563
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v17, "type"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 564
    const-string v17, "raw_contact_id1"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 565
    const-string v17, "raw_contact_id2"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 571
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #id1:J
    .end local v12           #id2:J
    .end local v15           #updateUri:Landroid/net/Uri;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 572
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 574
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 579
    .end local v8           #id:J
    .end local v14           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    return-void
.end method

.method private doPickPhotoAction()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1899
    const/4 v1, 0x0

    .line 1900
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1901
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1902
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1903
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1904
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1905
    const-string v2, "outputX"

    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    const-string v2, "outputY"

    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1907
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1910
    const v2, 0xf0003

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    :goto_0
    return v5

    .line 1912
    :catch_0
    move-exception v0

    .line 1915
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0160

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private doPickPhotoCamera()V
    .locals 3

    .prologue
    .line 1933
    const-string v1, "ContactLinkActivity"

    const-string v2, "doPickPhotoCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1935
    .local v0, intentCapture:Landroid/content/Intent;
    const-string v1, "RequestedFrom"

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1936
    const v1, 0xf0002

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1937
    return-void
.end method

.method private doUpdate()V
    .locals 18

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 489
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 491
    .local v15, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 492
    .local v10, aRawContactId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/htccontacts/link/ContactLinkActivity;->splitContact(J)V

    goto :goto_0

    .line 497
    .end local v10           #aRawContactId:J
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 499
    .local v16, tempIds1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 500
    .local v17, tempIds2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 501
    move v14, v12

    .local v14, j:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_3

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 503
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    const-wide/16 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/link/ContactLinkActivity;->setAggregationException(JJIJ)V

    .line 501
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 500
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 509
    .end local v12           #i:I
    .end local v14           #j:I
    .end local v16           #tempIds1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17           #tempIds2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->showAsyncProgressBeforeFinish(Landroid/content/Context;)V

    .line 511
    return-void
.end method

.method private getAvaliableAccount(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, availableAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType;>;"
    new-instance v2, Lcom/android/htccontacts/model/ExternalAccountType;

    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/android/htccontacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 282
    .local v2, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType;

    .line 286
    .local v3, src:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    if-eqz v3, :cond_0

    .line 288
    const-string v4, "ContactLinkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",iconRes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",titleRes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v3           #src:Lcom/android/htccontacts/model/AccountType;
    :cond_1
    return-object v0
.end method

.method private handleContactNotFound()V
    .locals 3

    .prologue
    .line 1940
    const v1, 0x7f0a02e5

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1941
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1942
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->finish()V

    .line 1943
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 328
    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    .line 329
    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    .line 331
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 333
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 335
    return-void
.end method

.method private isMarkAllSplit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1015
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1017
    :cond_0
    return v0
.end method

.method private needCreateNameDialog(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1848
    const/4 v11, 0x0

    .line 1849
    .local v11, showDropdown:Z
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1850
    const-string v0, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1851
    .local v1, queryUri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id IN( "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1854
    .local v12, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1855
    .local v8, raw:J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1856
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1857
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1861
    .end local v8           #raw:J
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1862
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/link/ContactLinkActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1866
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1867
    iput-object v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;

    .line 1868
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$9;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$9;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->clPickName:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1885
    const/4 v11, 0x1

    .line 1893
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v12           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    return v11

    .line 1888
    .restart local v1       #queryUri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v12       #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    if-eqz v6, :cond_2

    .line 1889
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private needCreatePhotoDialog(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1732
    const/4 v11, 0x0

    .line 1733
    .local v11, showDialog:Z
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1734
    const-string v0, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1735
    .local v1, queryUri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1736
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id IN( "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1738
    .local v13, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1739
    .local v8, raw:J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1741
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1745
    .end local v8           #raw:J
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1746
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1748
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/link/ContactLinkActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1750
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1751
    iput-object v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;

    .line 1752
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->shouldAssginPhoto()Z

    move-result v12

    .line 1753
    .local v12, showHeaderView:Z
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$8;

    invoke-direct {v0, p0, v12}, Lcom/android/htccontacts/link/ContactLinkActivity$8;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->clPickPhoto:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1796
    const/4 v11, 0x1

    .line 1805
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v12           #showHeaderView:Z
    .end local v13           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    return v11

    .line 1799
    .restart local v1       #queryUri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v13       #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    if-eqz v6, :cond_2

    .line 1800
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private notifyContactCard()V
    .locals 24

    .prologue
    .line 809
    const/16 v21, 0x0

    .line 810
    .local v21, shouldClose:Z
    const/16 v22, 0x0

    .line 811
    .local v22, shouldRollBack:Z
    const/4 v11, 0x0

    .line 813
    .local v11, contactCardUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->isCancel:Z

    if-eqz v3, :cond_2

    .line 815
    const/16 v22, 0x1

    .line 860
    :cond_0
    :goto_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 861
    if-eqz v11, :cond_1

    .line 862
    const-string v3, "ContactLinkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------RETURN URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 865
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 866
    const-string v3, "pure_flickr"

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    const-string v3, "rollback_contact"

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 868
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->setResult(ILandroid/content/Intent;)V

    .line 870
    return-void

    .line 817
    .end local v17           #intent:Landroid/content/Intent;
    :cond_2
    sget-object v4, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 818
    .local v4, queryUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ext_account_Type"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 820
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 821
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 822
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 823
    .local v13, extAccountType:Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v3, "com.htc.socialnetwork.flickr"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 824
    const/16 v21, 0x1

    .line 827
    .end local v13           #extAccountType:Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_4
    if-eqz v21, :cond_0

    .line 831
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v20, sb:Ljava/lang/StringBuilder;
    const-string v3, "_id IN ( "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 835
    .local v23, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 836
    .local v15, id:J
    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 837
    const/16 v3, 0x2c

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 839
    .end local v15           #id:J
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 840
    const-string v3, " ) "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "account_type"

    aput-object v7, v5, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 845
    .local v12, cr:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 846
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 847
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 848
    .local v18, nonFlickrId:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 849
    .local v9, accountType:Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v3, "com.htc.socialnetwork.flickr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 850
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    .line 854
    .end local v9           #accountType:Ljava/lang/String;
    .end local v18           #nonFlickrId:J
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private processIntent()V
    .locals 18

    .prologue
    .line 295
    const/4 v12, 0x0

    .line 296
    .local v12, Name:Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 297
    .local v13, Name_id:J
    const-wide/16 v8, 0x0

    .line 298
    .local v8, Photo_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    .line 300
    :cond_0
    const-string v1, "ContactLinkActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------processIntent:mLookupUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/LinkUtils;->getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 303
    .local v16, mUri:Landroid/net/Uri;
    if-nez v16, :cond_1

    move-wide v6, v13

    .end local v13           #Name_id:J
    .local v6, Name_id:J
    move-object v5, v12

    .line 324
    .end local v12           #Name:Ljava/lang/String;
    .local v5, Name:Ljava/lang/String;
    :goto_0
    return-void

    .line 306
    .end local v5           #Name:Ljava/lang/String;
    .end local v6           #Name_id:J
    .restart local v12       #Name:Ljava/lang/String;
    .restart local v13       #Name_id:J
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 307
    .local v10, ContactId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "data"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v17, "display_name"

    aput-object v17, v3, v4

    const/4 v4, 0x1

    const-string v17, "name_raw_contact_id"

    aput-object v17, v3, v4

    const/4 v4, 0x2

    const-string v17, "photo_id"

    aput-object v17, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 311
    .local v15, mCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 312
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .end local v12           #Name:Ljava/lang/String;
    .restart local v5       #Name:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 315
    .end local v13           #Name_id:J
    .restart local v6       #Name_id:J
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 318
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 323
    new-instance v1, Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v2, p0

    move-wide v3, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/htccontacts/link/MergeContact;-><init>(Landroid/content/Context;JLjava/lang/String;JJ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    goto :goto_0

    .end local v5           #Name:Ljava/lang/String;
    .end local v6           #Name_id:J
    .restart local v12       #Name:Ljava/lang/String;
    .restart local v13       #Name_id:J
    :cond_2
    move-wide v6, v13

    .end local v13           #Name_id:J
    .restart local v6       #Name_id:J
    move-object v5, v12

    .line 321
    .end local v12           #Name:Ljava/lang/String;
    .restart local v5       #Name:Ljava/lang/String;
    goto :goto_0

    .end local v5           #Name:Ljava/lang/String;
    .end local v6           #Name_id:J
    .restart local v12       #Name:Ljava/lang/String;
    .restart local v13       #Name_id:J
    :cond_3
    move-wide v6, v13

    .end local v13           #Name_id:J
    .restart local v6       #Name_id:J
    move-object v5, v12

    .end local v12           #Name:Ljava/lang/String;
    .restart local v5       #Name:Ljava/lang/String;
    goto :goto_1
.end method

.method private processSuggestionAfterPressOk()V
    .locals 10

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z

    if-nez v0, :cond_0

    .line 516
    const-wide/16 v6, 0x1

    .line 520
    .local v6, rule:J
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 521
    .local v9, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 522
    .local v1, aContactId:J
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/htccontacts/link/ContactLinkActivity;->queryRawContactsAtSameContacts(JJIJ)V

    goto :goto_0

    .line 526
    .end local v1           #aContactId:J
    .end local v6           #rule:J
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private queryLinked()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1408
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryHandler:Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->cancelOperation(I)V

    .line 1410
    const-string v0, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1411
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryHandler:Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

    sget-object v4, Lcom/android/htccontacts/link/ContactLinkActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v6}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method private queryRawContactsAtSameContacts(JJIJ)V
    .locals 17
    .parameter "contact_id"
    .parameter "rawContactId"
    .parameter "exceptionType"
    .parameter "method_id"

    .prologue
    .line 1251
    const/4 v3, 0x0

    .line 1252
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1253
    .local v11, c:Landroid/database/Cursor;
    const/4 v13, 0x1

    .line 1254
    .local v13, isSave:Z
    const-wide/16 v7, 0x0

    cmp-long v2, p1, v7

    if-gtz v2, :cond_1

    .line 1255
    const/4 v13, 0x0

    .line 1256
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "contact_id"

    aput-object v8, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1258
    if-eqz v11, :cond_1

    .line 1259
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 1262
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1266
    :cond_1
    const/4 v10, 0x0

    .line 1267
    .local v10, accountType:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1268
    .local v12, dataSet:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "account_type"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "data_set"

    aput-object v8, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mArrayLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1272
    if-eqz v11, :cond_5

    .line 1273
    :try_start_0
    const-string v2, "account_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1274
    .local v15, typeIdx:I
    const-string v2, "data_set"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1275
    .local v14, setIdx:I
    :cond_2
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1276
    const/4 v10, 0x0

    .line 1277
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, raw_id:J
    move-object/from16 v4, p0

    move/from16 v7, p5

    move-wide/from16 v8, p6

    .line 1278
    invoke-virtual/range {v4 .. v9}, Lcom/android/htccontacts/link/ContactLinkActivity;->setAggregationException(JIJ)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1282
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1283
    move-object/from16 v0, p0

    invoke-static {v0, v10, v12}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z

    .line 1287
    :cond_3
    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1298
    .end local v5           #raw_id:J
    .end local v14           #setIdx:I
    .end local v15           #typeIdx:I
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1292
    .restart local v14       #setIdx:I
    .restart local v15       #typeIdx:I
    :cond_4
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1294
    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    .end local v14           #setIdx:I
    .end local v15           #typeIdx:I
    :cond_5
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    return-void
.end method

.method private querySuggest()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1368
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryHandler:Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->cancelOperation(I)V

    .line 1400
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v4}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1401
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryHandler:Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

    sget-object v4, Lcom/android/htccontacts/link/ContactLinkActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    return-void
.end method

.method private removeSuggestionPair(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, selfIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, suggestIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .local v18, value:Landroid/content/ContentValues;
    const-string v19, "removed"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .local v15, sb:Ljava/lang/StringBuilder;
    const-string v19, " ("

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-wide/16 v11, 0x0

    .line 959
    .local v11, param1:J
    const-wide/16 v13, 0x0

    .line 960
    .local v13, param2:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 961
    .local v16, tempId1s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 962
    .local v17, tempId2s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 963
    .local v7, id1:J
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 964
    .local v9, id2:J
    cmp-long v19, v7, v9

    if-gez v19, :cond_1

    .line 965
    move-wide v11, v7

    .line 966
    move-wide v13, v9

    .line 974
    :goto_1
    const-string v19, " ("

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "raw_contact_id1 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v19, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "raw_contact_id2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v19, " )"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v19, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 970
    :cond_1
    move-wide v11, v9

    .line 971
    move-wide v13, v7

    goto :goto_1

    .line 985
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #id1:J
    .end local v9           #id2:J
    :cond_2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 986
    const-string v19, " )"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    sget-object v20, Lcom/htc/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 991
    return-void
.end method

.method private removeSuggetionFromSelect()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 885
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v0, "contact_id IN ( "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 888
    .local v12, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 889
    .local v8, id:J
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 890
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 892
    .end local v8           #id:J
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 893
    const-string v0, " ) "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v11, suggestRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 897
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 899
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 903
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 907
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 908
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v11}, Lcom/android/htccontacts/link/ContactLinkActivity;->removeSuggestionPair(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 911
    :cond_3
    return-void
.end method

.method private removeSuggetionFromSplit()V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->removeSuggestionPair(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 946
    :cond_0
    return-void
.end method

.method private resetDialog()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1605
    iput-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dNameDirty:Z

    .line 1606
    iput-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhotoDirty:Z

    .line 1607
    return-void
.end method

.method private rollBackUserActionOnUi(ZZ)V
    .locals 1
    .parameter "useName"
    .parameter "usePhoto"

    .prologue
    .line 994
    if-eqz p1, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->rollBackName()V

    .line 997
    :cond_0
    if-eqz p2, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->rollBackPhoto()V

    .line 1000
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V

    .line 1001
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->clearSuggestionListener()V

    .line 1004
    :cond_2
    return-void
.end method

.method private setLinkRawContacts()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 1502
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1503
    iput-boolean v12, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z

    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, accountType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1508
    .local v2, dataSet:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v11}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCount()I

    move-result v11

    if-lez v11, :cond_3

    .line 1509
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v11}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1510
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1511
    const-string v11, "account_type"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1512
    .local v10, typeIdx:I
    const-string v11, "data_set"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1513
    .local v8, setIdx:I
    iget-object v12, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mArrayLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1515
    :cond_0
    const/4 v0, 0x0

    .line 1516
    :try_start_0
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v11}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1517
    .local v4, id:J
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1518
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1520
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1522
    invoke-static {p0, v0, v2}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1523
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z

    .line 1525
    :cond_1
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v11}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1526
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    iget-object v11, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1529
    .local v9, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1530
    .local v6, raw:J
    const-string v11, "ContactLinkActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@@@@@@@RAW: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1526
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:J
    .end local v6           #raw:J
    .end local v9           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 1533
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #id:J
    .restart local v9       #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V

    .line 1534
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->resetDialog()V

    .line 1540
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:J
    .end local v8           #setIdx:I
    .end local v9           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10           #typeIdx:I
    :goto_1
    return-void

    .line 1537
    :cond_3
    const-string v11, "ContactLinkActivity"

    const-string v12, "no raw_contacts!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->handleContactNotFound()V

    goto :goto_1
.end method

.method private shouldAssginPhoto()Z
    .locals 10

    .prologue
    .line 1611
    const/4 v3, 0x0

    .line 1612
    .local v3, isContainNormalContacts:Z
    iget-object v8, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v8, :cond_1

    .line 1613
    iget-object v8, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1614
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1615
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1616
    const-string v8, "account_type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1617
    .local v7, typeIdx:I
    const-string v8, "data_set"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1619
    .local v6, setIdx:I
    :cond_0
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1620
    .local v4, raw_id:J
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, accoutType:Ljava/lang/String;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1622
    .local v2, dataSet:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1623
    invoke-static {p0, v0, v2}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1624
    const/4 v3, 0x1

    .line 1632
    .end local v0           #accoutType:Ljava/lang/String;
    .end local v1           #c:Landroid/database/Cursor;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v4           #raw_id:J
    .end local v6           #setIdx:I
    .end local v7           #typeIdx:I
    :cond_1
    :goto_0
    return v3

    .line 1628
    .restart local v0       #accoutType:Ljava/lang/String;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v2       #dataSet:Ljava/lang/String;
    .restart local v4       #raw_id:J
    .restart local v6       #setIdx:I
    .restart local v7       #typeIdx:I
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0
.end method

.method private shouldShowPhotoOption()Z
    .locals 11

    .prologue
    .line 1637
    const/4 v4, 0x0

    .line 1638
    .local v4, isShowContacts:Z
    const/4 v2, 0x0

    .line 1639
    .local v2, count:I
    iget-object v9, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v9, :cond_1

    .line 1640
    iget-object v9, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v9}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1641
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1642
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1643
    const-string v9, "account_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1644
    .local v8, typeIdx:I
    const-string v9, "data_set"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1646
    .local v7, setIdx:I
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1647
    .local v5, raw_id:J
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, accoutType:Ljava/lang/String;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1649
    .local v3, dataSet:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1650
    invoke-static {p0, v0, v3}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1651
    const/4 v4, 0x1

    .line 1660
    .end local v0           #accoutType:Ljava/lang/String;
    .end local v1           #c:Landroid/database/Cursor;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v5           #raw_id:J
    .end local v7           #setIdx:I
    .end local v8           #typeIdx:I
    :cond_1
    :goto_0
    const/4 v9, 0x1

    if-le v2, v9, :cond_2

    .line 1661
    const/4 v4, 0x1

    .line 1663
    :cond_2
    return v4

    .line 1654
    .restart local v0       #accoutType:Ljava/lang/String;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v5       #raw_id:J
    .restart local v7       #setIdx:I
    .restart local v8       #typeIdx:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1656
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0
.end method

.method private showAsyncProgressAfterLinkOne(JIJ)V
    .locals 9
    .parameter "rawContactId"
    .parameter "exceptionType"
    .parameter "method_id"

    .prologue
    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isLinkedOneNow:Z

    .line 639
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->setListLoading()V

    .line 640
    monitor-enter p0

    .line 641
    :try_start_0
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v1, p0

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;Landroid/os/Handler;JIJ)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLinkOneHander:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

    .line 642
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLinkOneHander:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$7;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$7;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->setAfterLinkOneListener(Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;)V

    .line 657
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLinkOneHander:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

    const-string v2, "LinkOneHandler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 658
    monitor-exit p0

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showAsyncProgressBeforeFinish(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 583
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 587
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v2, 0x7f0a0128

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 591
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 592
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 594
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 596
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v2, Lcom/android/htccontacts/link/ContactLinkActivity$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$5;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 608
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/link/ContactLinkActivity$6;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)V

    .line 633
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 635
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private showNamePickerDialog()V
    .locals 2

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dNameDirty:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1810
    :cond_0
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/ContactLinkActivity$1;)V

    .line 1811
    .local v0, thread:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->start()V

    .line 1818
    .end local v0           #thread:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;
    :cond_1
    :goto_0
    return-void

    .line 1813
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1814
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    if-nez v1, :cond_1

    .line 1815
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    goto :goto_0
.end method

.method private showPhotoPickerDialog()V
    .locals 2

    .prologue
    .line 1667
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhotoDirty:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1668
    :cond_0
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/ContactLinkActivity$1;)V

    .line 1669
    .local v0, thread:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->start()V

    .line 1676
    .end local v0           #thread:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;
    :cond_1
    :goto_0
    return-void

    .line 1671
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    if-nez v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private splitContact(J)V
    .locals 6
    .parameter "rawContactId"

    .prologue
    .line 1344
    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/link/ContactLinkActivity;->setAggregationException(JIJ)V

    .line 1348
    return-void
.end method

.method private declared-synchronized syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1544
    .local p1, mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    .local v4, mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1547
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1548
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 1549
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1550
    .local v3, mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1551
    .local v1, id:J
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1553
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 1554
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1544
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:J
    .end local v3           #mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4           #mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local p1           #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1558
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:J
    .restart local v3       #mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v4       #mtempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1       #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1560
    .end local v1           #id:J
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1           #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast p1, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1565
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #mOriIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1       #mArrayIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 1562
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private updateHeader()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1007
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->shouldShowPhotoOption()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1011
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1009
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateSelf()V
    .locals 5

    .prologue
    .line 707
    const-wide/16 v0, -0x1

    .line 710
    .local v0, ContactId:J
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/htccontacts/util/LinkUtils;->getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 711
    .local v2, mUri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 727
    :goto_0
    return-void

    .line 713
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 714
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    .line 718
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 719
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3, v0, v1}, Lcom/android/htccontacts/link/MergeContact;->updateContactId(J)V

    .line 721
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3}, Lcom/android/htccontacts/link/MergeContact;->updatePhotoAfterContactMerge()V

    .line 723
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->applyBatchOperations()V

    goto :goto_0

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->handleContactNotFound()V

    goto :goto_0
.end method

.method private declared-synchronized updateSelfBeforeFinish()V
    .locals 14

    .prologue
    .line 731
    monitor-enter p0

    const-wide/16 v6, -0x1

    .line 734
    .local v6, ContactId:J
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/LinkUtils;->getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 735
    .local v10, mUri:Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 806
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 737
    :cond_1
    :try_start_1
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    .line 738
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    .line 741
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isCancel:Z

    if-eqz v0, :cond_a

    .line 743
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 744
    .local v13, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 745
    .local v11, raw_id:J
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 746
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 747
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 749
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 750
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 751
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 752
    iput-wide v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    .line 754
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 780
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #raw_id:J
    .end local v13           #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isCancel:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-gez v0, :cond_5

    iget-wide v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 787
    iget-wide v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->ContactCardId:J

    .line 789
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-lez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0, v6, v7}, Lcom/android/htccontacts/link/MergeContact;->updateContactId(J)V

    .line 792
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z

    if-eqz v0, :cond_6

    .line 793
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->removeSuggetionFromSelect()V

    .line 795
    :cond_6
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    if-eqz v0, :cond_7

    .line 796
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->removeSuggetionFromSplit()V

    .line 798
    :cond_7
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateDBForName(Ljava/util/ArrayList;Z)V

    .line 799
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->isDisplayInfoModify()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 800
    :cond_8
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateDBForPhoto(Ljava/util/ArrayList;Z)V

    .line 802
    :cond_9
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->applyBatchOperations()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 731
    .end local v10           #mUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 760
    .restart local v10       #mUri:Landroid/net/Uri;
    :cond_a
    :try_start_2
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isSplitContact:Z

    if-eqz v0, :cond_4

    .line 762
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 763
    .restart local v13       #tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 764
    .restart local v11       #raw_id:J
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 765
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 766
    .restart local v1       #queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 768
    .restart local v8       #c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 769
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 770
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 772
    :cond_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public clearSuggestionListener()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1585
    iput-boolean v5, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z

    .line 1586
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1587
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    if-eqz v1, :cond_2

    .line 1588
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1589
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1590
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1591
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mArrayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1593
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1594
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1596
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->setAdapter()V

    .line 1600
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1601
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 1602
    return-void

    .line 1596
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doRemovePhotoAction()V
    .locals 3

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/MergeContact;->getContactPhotoId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/link/MergeContact;->updatePhotoNull(J)V

    .line 1929
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V

    .line 1930
    return-void
.end method

.method public isForgroundActivity()Z
    .locals 1

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v10, 0x7f0a03bb

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1106
    const-string v0, "ContactLinkActivity"

    const-string v3, "onActivityResult"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    sparse-switch p1, :sswitch_data_0

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1109
    :sswitch_0
    if-ne p2, v8, :cond_0

    .line 1111
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1112
    .local v7, raw_contact_uri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 1113
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1114
    .local v1, raw_contactId:J
    const-string v0, "ContactLinkActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-----------raw_contactId:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-wide/16 v4, 0x1

    .line 1122
    .local v4, rule:J
    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/link/ContactLinkActivity;->showAsyncProgressAfterLinkOne(JIJ)V

    goto :goto_0

    .line 1128
    .end local v1           #raw_contactId:J
    .end local v4           #rule:J
    .end local v7           #raw_contact_uri:Landroid/net/Uri;
    :sswitch_1
    if-ne p2, v8, :cond_0

    .line 1129
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    .line 1130
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    sget-object v3, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/link/MergeContact;->updatePhotoNewBitmap(Landroid/graphics/Bitmap;)V

    .line 1132
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/LinkContactListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1135
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/link/ContactLinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 1141
    :sswitch_2
    if-ne p2, v8, :cond_0

    .line 1142
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1143
    .local v6, bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-static {v6, v0, v3}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    .line 1144
    if-eqz v6, :cond_2

    .line 1145
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1146
    :cond_2
    const/4 v6, 0x0

    .line 1148
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    sget-object v3, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/link/MergeContact;->updatePhotoNewBitmap(Landroid/graphics/Bitmap;)V

    .line 1150
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/LinkContactListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1153
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/link/ContactLinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xf0002 -> :sswitch_2
        0xf0003 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const v2, 0x7f03004b

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->setContentView(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mResolver:Landroid/content/ContentResolver;

    .line 246
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->initListView()V

    .line 247
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->setListeners()V

    .line 250
    new-instance v2, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

    invoke-direct {v2, p0, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryHandler:Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;

    .line 252
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z

    .line 254
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 255
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getFilterSources()Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    .local v0, Accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType;>;"
    new-instance v2, Lcom/android/htccontacts/link/LinkTypeListAdapter;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->getAvaliableAccount(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/link/LinkTypeListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_type:Lcom/android/htccontacts/link/LinkTypeListAdapter;

    .line 258
    new-instance v2, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 261
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 263
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mLookupUri:Landroid/net/Uri;

    .line 265
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mQueryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->postInBackground(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1163
    const v0, 0x7f0a0284

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1166
    const v0, 0x7f0a0285

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a71

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1169
    return v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1049
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 1051
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1052
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1053
    sput-object v1, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->recycleBitmap()V

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/LinkContactListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1062
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1067
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_4

    .line 1071
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1074
    :cond_4
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameCursorRegistered:Z

    if-nez v0, :cond_8

    .line 1075
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1076
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1077
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;

    .line 1086
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoCursorRegistered:Z

    if-nez v0, :cond_9

    .line 1087
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1088
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1089
    iput-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;

    .line 1098
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1099
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1102
    :cond_7
    return-void

    .line 1081
    :cond_8
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;

    if-eqz v0, :cond_5

    .line 1082
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/pickNameAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1093
    :cond_9
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;

    if-eqz v0, :cond_6

    .line 1094
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/pickPhotoAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public onLinkButtonPressed(J)V
    .locals 6
    .parameter "raw_id"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 413
    const-string v2, "ContactLinkActivity"

    const-string v3, "------------onLinkButtonPressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mArrayLock:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 416
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/MergeContact;->getCurrentNameRawId()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v4}, Lcom/android/htccontacts/link/MergeContact;->getCurrentPhotoRawId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->rollBackUserActionOnUi(ZZ)V

    .line 425
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListAdapter;->notifyDataSetChanged()V

    .line 429
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->resetDialog()V

    .line 430
    return-void

    :cond_1
    move v2, v0

    .line 418
    goto :goto_0

    .line 421
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V

    goto :goto_1

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 21
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 339
    const-string v18, "ContactLinkActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "------------onListItemClick:position"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .line 344
    .local v10, item1:Ljava/lang/Object;
    instance-of v0, v10, Landroid/database/Cursor;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v3, v10

    .line 345
    check-cast v3, Landroid/database/Cursor;

    .line 346
    .local v3, c:Landroid/database/Cursor;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 347
    .local v6, contact_id:J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_0

    .line 348
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v9, intent:Landroid/content/Intent;
    const-string v18, "com.android.htccontacts"

    const-string v19, "com.android.htccontacts.link.widget.ShowContactInfoDialog"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    sget-object v18, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 351
    .local v5, contactUri:Landroid/net/Uri;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 352
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/link/ContactLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 358
    .end local v3           #c:Landroid/database/Cursor;
    .end local v5           #contactUri:Landroid/net/Uri;
    .end local v6           #contact_id:J
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #item1:Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    .line 359
    .local v11, item2:Ljava/lang/Object;
    instance-of v0, v11, Landroid/database/Cursor;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v4, v11

    .line 360
    check-cast v4, Landroid/database/Cursor;

    .line 361
    .local v4, cl:Landroid/database/Cursor;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 362
    .local v14, raw_id:J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_0

    .line 363
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 364
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v18, "com.android.htccontacts"

    const-string v19, "com.android.htccontacts.link.widget.ShowContactInfoDialog"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    sget-object v18, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 366
    .restart local v5       #contactUri:Landroid/net/Uri;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 368
    const-string v18, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, display_name:Ljava/lang/String;
    const-string v18, "photo_id"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 370
    .local v12, photo_id:J
    const-string v18, "account_type"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 371
    .local v17, typeIdx:I
    const-string v18, "data_set"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 372
    .local v16, setIdx:I
    sget-object v18, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v18, :cond_1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 375
    const-string v18, "photo_bp"

    sget-object v19, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 379
    :goto_1
    const-string v18, "display_name"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/link/ContactLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 377
    :cond_1
    const-string v18, "photo_id"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 386
    .end local v4           #cl:Landroid/database/Cursor;
    .end local v5           #contactUri:Landroid/net/Uri;
    .end local v8           #display_name:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #item2:Ljava/lang/Object;
    .end local v12           #photo_id:J
    .end local v14           #raw_id:J
    .end local v16           #setIdx:I
    .end local v17           #typeIdx:I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->chooseTypeListener(I)V

    goto/16 :goto_0

    .line 389
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->clearSuggestionListener()V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1217
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1195
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[ContactLinkActivity]Set photo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->showPhotoPickerDialog()V

    goto :goto_0

    .line 1206
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[ContactLinkActivity]Set Name"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->showNamePickerDialog()V

    goto :goto_0

    .line 1193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1034
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 1035
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 1040
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1174
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1175
    .local v1, photo:Landroid/view/MenuItem;
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1177
    .local v0, name:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->shouldShowPhotoOption()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1178
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1183
    :goto_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isMarkAllSplit()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 1184
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1188
    :goto_1
    return v3

    .line 1180
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1186
    :cond_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1023
    const-string v0, "ContactLinkActivity"

    const-string v1, "-----------onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 1026
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isLinkedOneNow:Z

    if-nez v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->startAsyncQurey()V

    .line 1028
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1030
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1044
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 1045
    return-void
.end method

.method public onSuggestButtonPressed(J)V
    .locals 4
    .parameter "contact_id"

    .prologue
    const/4 v3, 0x1

    .line 398
    const-string v0, "ContactLinkActivity"

    const-string v1, "------------onSuggestButtonPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mArrayLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListAdapter;->notifyDataSetChanged()V

    .line 410
    return-void

    .line 404
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setAdapter()V
    .locals 3

    .prologue
    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 1481
    new-instance v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 1484
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1485
    iget-boolean v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z

    if-nez v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v1, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;-><init>(Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V

    const v2, 0x7f0a027d

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/LinkContactListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;

    const v2, 0x7f0a027e

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_type:Lcom/android/htccontacts/link/LinkTypeListAdapter;

    const v2, 0x7f0a027f

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 1495
    new-instance v0, Lcom/android/htccontacts/widget/IndexListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 1497
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1499
    return-void
.end method

.method protected setAggregationException(JIJ)V
    .locals 9
    .parameter "rawContactId"
    .parameter "exceptionType"
    .parameter "method_id"

    .prologue
    .line 1309
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1310
    .local v6, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1311
    .local v4, tempIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1312
    .local v2, raw:J
    cmp-long v7, v2, p1

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-lez v7, :cond_0

    .line 1314
    sget-object v7, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v8, "aggregation_exceptions_manual"

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1315
    .local v5, updateUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1317
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1318
    const-string v7, "raw_contact_id1"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1319
    const-string v7, "raw_contact_id2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1321
    iget-object v7, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1324
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #raw:J
    .end local v5           #updateUri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method protected setAggregationException(JJIJ)V
    .locals 5
    .parameter "rawContactId1"
    .parameter "rawContactId2"
    .parameter "exceptionType"
    .parameter "method_id"

    .prologue
    const-wide/16 v3, 0x0

    .line 1329
    cmp-long v2, p1, p3

    if-eqz v2, :cond_0

    cmp-long v2, p1, v3

    if-lez v2, :cond_0

    cmp-long v2, p3, v3

    if-lez v2, :cond_0

    .line 1331
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "aggregation_exceptions_manual"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p6, p7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1332
    .local v1, updateUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1334
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1335
    const-string v2, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1336
    const-string v2, "raw_contact_id2"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1338
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #updateUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected setListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 434
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 435
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 436
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 438
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 440
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v5, Lcom/android/htccontacts/link/ContactLinkActivity$1;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$1;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v5, Lcom/android/htccontacts/link/ContactLinkActivity$2;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$2;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 457
    .local v2, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 458
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderImage()Lcom/htc/widget/HeaderBarImage;

    move-result-object v3

    .line 459
    .local v3, mPhoto:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderDropDown()Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 460
    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$3;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 472
    .local v1, l:Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HeaderBarDropDown;->setFocusable(Z)V

    .line 475
    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v5, Lcom/android/htccontacts/link/ContactLinkActivity$4;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$4;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    return-void
.end method

.method public startAsyncQurey()V
    .locals 4

    .prologue
    .line 1352
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->queryLinked()V

    .line 1359
    invoke-direct {p0}, Lcom/android/htccontacts/link/ContactLinkActivity;->querySuggest()V

    .line 1362
    :cond_0
    return-void
.end method
