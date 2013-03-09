.class public Lcom/android/htccontacts/HtcSendContactActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;,
        Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;,
        Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;,
        Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;,
        Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;,
        Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;,
        Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;
    }
.end annotation


# static fields
.field private static final APP_BlueTooth:I = 0x5

.field private static final APP_Gmail:I = 0x4

.field private static final APP_MMS:I = 0x2

.field private static final APP_Mail:I = 0x3

.field private static final APP_SMS:I = 0x1

.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final LOOKUP_URI_READY_MESSAGE:I = 0x2

.field protected static final RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcSendContactActivity"

.field static final VCARD_ROOT_PATH:Ljava/lang/String; = "/data/misc/vcard"


# instance fields
.field private final MODE_GET_VCARD:I

.field private final MODE_SEND_CONTACT:I

.field private mAccountNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

.field private mCONTACT_INFO_COMPLETED:Z

.field private mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

.field private mENTITY_QUERY_COMPLETED:Z

.field private mEXTRA_EMAIL:Ljava/lang/String;

.field private mEXTRA_PHONE_NUMBER:Ljava/lang/String;

.field private mFacebookPhotoIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsDirty:Z

.field private mIsMyContactCard:Z

.field private mMode:I

.field mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

.field private mPhotoIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPickPhotoCursor:Landroid/database/MatrixCursor;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSendVia:I

.field mSendButton:Lcom/htc/widget/HtcFooterButton;

.field private mSendContactTextViaNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendVia:Lcom/htc/widget/HtcSpinner;

.field mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

.field private mSendViaNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendViaValues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSendVias:[Ljava/lang/Integer;

.field private mSeparatorHeader:Landroid/view/View;

.field private mUri:Landroid/net/Uri;

.field private mVcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 193
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcSendContactActivity;->RAW_RAWCONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 119
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsDirty:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mENTITY_QUERY_COMPLETED:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mCONTACT_INFO_COMPLETED:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    .line 136
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    .line 141
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    .line 143
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->MODE_SEND_CONTACT:I

    .line 144
    iput v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->MODE_GET_VCARD:I

    .line 146
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mFacebookPhotoIds:Ljava/util/Vector;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAccountNames:Ljava/util/HashMap;

    .line 150
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    .line 152
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    .line 153
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    .line 154
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    .line 155
    iput v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    .line 204
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 205
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 207
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcSendContactActivity$1;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mHandler:Landroid/os/Handler;

    .line 2339
    return-void
.end method

.method private AddOrRemovePhotoEntry()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 987
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 989
    .local v0, isPhotoEntryExist:Z
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    array-length v2, v2

    iget v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    iget v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    iget v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 990
    if-eqz v0, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 999
    .end local v0           #isPhotoEntryExist:Z
    :cond_0
    :goto_1
    return-void

    .line 988
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 994
    .restart local v0       #isPhotoEntryExist:Z
    :cond_2
    if-nez v0, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcSendContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->doSend()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/HtcSendContactActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/HtcSendContactActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput p1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->setSendViaItem()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/HtcSendContactActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity;->setPhotoItemImage(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->checkAllUnSelectedOrNot()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->removePhotoItemImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/HtcSendContactActivity;Lcom/android/htccontacts/HtcContactInfo;)Lcom/android/htccontacts/HtcContactInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/HtcSendContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/HtcSendContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mENTITY_QUERY_COMPLETED:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mENTITY_QUERY_COMPLETED:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->dataChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/HtcSendContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mCONTACT_INFO_COMPLETED:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/htccontacts/HtcSendContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mCONTACT_INFO_COMPLETED:Z

    return p1
.end method

.method private addSeparatorHeader(I)V
    .locals 6
    .parameter "labelResId"

    .prologue
    const/4 v5, 0x0

    .line 2331
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2332
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x2090026

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSeparatorHeader:Landroid/view/View;

    .line 2334
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSeparatorHeader:Landroid/view/View;

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2335
    .local v1, separaterTextView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2336
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSeparatorHeader:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2337
    return-void
.end method

.method private buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;
    .locals 6
    .parameter "kind"
    .parameter "values"
    .parameter "lowerCase"

    .prologue
    const/4 v4, 0x0

    .line 1002
    const-string v5, "data2"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1003
    .local v3, type:Ljava/lang/Integer;
    const-string v5, "data3"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, label:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1006
    .local v2, rtn:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_3

    .line 1007
    :cond_0
    move-object v2, v1

    .line 1019
    :cond_1
    if-eqz p3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_0
    return-object v4

    .line 1009
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v0

    .line 1010
    .local v0, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    if-eqz v0, :cond_2

    .line 1013
    iget v5, v0, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1014
    if-nez v2, :cond_1

    goto :goto_0

    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_4
    move-object v4, v2

    .line 1019
    goto :goto_0
.end method

.method private buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 1023
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-object v1

    .line 1026
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    invoke-interface {v2, p0, p2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1027
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildEntries()V
    .locals 24

    .prologue
    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSeparatorHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSeparatorHeader:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 861
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    if-eqz v3, :cond_1

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 865
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080700

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 868
    const v3, 0x7f0a01b5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->addSeparatorHeader(I)V

    .line 870
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->newSendViaEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v3, v3, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getDisplayNameId()J

    move-result-wide v7

    .line 877
    .local v7, displayNameId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v7, v3

    if-eqz v3, :cond_3

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/htccontacts/HtcSendContactActivity;->newNameEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v15

    .line 879
    .local v15, nameEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v7           #displayNameId:J
    .end local v15           #nameEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildphoneEntries()Ljava/util/ArrayList;

    move-result-object v19

    .line 883
    .local v19, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 884
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 885
    .local v10, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 889
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildMailEntries()Ljava/util/ArrayList;

    move-result-object v14

    .line 890
    .local v14, mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 891
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 892
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 896
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildPostalEntries()Ljava/util/ArrayList;

    move-result-object v22

    .line 897
    .local v22, postalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 898
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 899
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 903
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildImEntries()Ljava/util/ArrayList;

    move-result-object v13

    .line 905
    .local v13, imEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildNotesEntries()Ljava/util/ArrayList;

    move-result-object v17

    .line 909
    .local v17, noteEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildOrganizationEntries()Ljava/util/ArrayList;

    move-result-object v18

    .line 911
    .local v18, organizationEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildNicknameEntries()Ljava/util/ArrayList;

    move-result-object v16

    .line 913
    .local v16, nicknameEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildWebsiteEntries()Ljava/util/ArrayList;

    move-result-object v23

    .line 915
    .local v23, websiteEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildEventEntries()Ljava/util/ArrayList;

    move-result-object v11

    .line 917
    .local v11, eventEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 924
    :cond_c
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 925
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 926
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 930
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 931
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 932
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 936
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_e
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 937
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 938
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 941
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_f
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 942
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 943
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 946
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_10
    if-eqz v23, :cond_11

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 947
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 948
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 951
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 952
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 953
    .restart local v10       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 958
    .end local v10           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_12
    const v3, 0x7f0a00e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 959
    .local v9, category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    if-eqz v3, :cond_13

    .line 960
    const v3, 0x7f0a00e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 962
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->hideLinkView()V

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getPhotoId()J

    move-result-wide v20

    .line 964
    .local v20, photo_id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v20, v3

    if-eqz v3, :cond_15

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const/4 v4, 0x0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactInfo;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->newPhotoEntry(Landroid/content/res/Resources;J)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 977
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->AddOrRemovePhotoEntry()V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_14

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    const-string v4, " "

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_14
    return-void

    .line 970
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactInfo;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/HtcContactInfo;->setThumbnailId(J)V

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 974
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    goto :goto_9
.end method

.method private buildEventEntries()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2263
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2265
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v6

    .line 2266
    .local v6, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v6, :cond_1

    .line 2327
    :cond_0
    return-object v17

    .line 2268
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    .line 2269
    .local v7, entity:Landroid/content/Entity;
    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 2270
    .local v5, entValues:Landroid/content/ContentValues;
    const-string v23, "account_type"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2271
    .local v2, accountType:Ljava/lang/String;
    const-string v23, "data_set"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2272
    .local v4, dataSet:Ljava/lang/String;
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 2274
    .local v15, rawContactId:J
    const-string v23, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 2278
    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity$NamedContentValues;

    .line 2280
    .local v21, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 2281
    .local v8, entryValues:Landroid/content/ContentValues;
    const-string v23, "raw_contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2283
    const-string v23, "mimetype"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2284
    .local v14, mimetype:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v20

    .line 2288
    .local v20, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4, v14}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v13

    .line 2293
    .local v13, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v13, :cond_3

    .line 2296
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2298
    .local v11, id:J
    const-string v23, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 2300
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v13, v8, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v19

    .line 2301
    .local v19, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v18

    .line 2307
    .local v18, sData:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/util/ContactsUtils;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 2308
    .local v3, cal:Ljava/util/Calendar;
    if-eqz v3, :cond_3

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Lcom/android/htccontacts/util/ContactsUtils;->getDateStringWithoutWeekday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 2312
    new-instance v22, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct/range {v22 .. v22}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 2313
    .local v22, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 2314
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 2315
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 2316
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->enabled:Z

    .line 2317
    move-object/from16 v0, v22

    iput-wide v11, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 2319
    if-eqz v22, :cond_3

    .line 2320
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private buildImEntries()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1669
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .local v25, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    .line 1672
    .local v15, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v15, :cond_1

    .line 1737
    :cond_0
    return-object v25

    .line 1674
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 1675
    .local v16, entity:Landroid/content/Entity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v14

    .line 1676
    .local v14, entValues:Landroid/content/ContentValues;
    const-string v3, "account_type"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1677
    .local v11, accountType:Ljava/lang/String;
    const-string v3, "data_set"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1678
    .local v12, dataSet:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 1680
    .local v23, rawContactId:J
    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1684
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/Entity$NamedContentValues;

    .line 1686
    .local v27, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    .line 1687
    .local v17, entryValues:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1689
    const-string v3, "mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1690
    .local v21, mimetype:Ljava/lang/String;
    if-eqz v21, :cond_3

    .line 1693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v26

    .line 1694
    .local v26, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v12, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v20

    .line 1698
    .local v20, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v20, :cond_3

    .line 1701
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1702
    .local v6, id:J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1704
    .local v5, uri:Landroid/net/Uri;
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1705
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v8

    .line 1706
    .local v8, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    .line 1708
    .local v9, sData:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1709
    const v3, 0x7f0a0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1712
    :cond_4
    const/16 v22, -0x2

    .line 1713
    .local v22, nProtocolType:I
    const-string v3, "data5"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1715
    :try_start_0
    const-string v3, "data5"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1721
    :cond_5
    :goto_1
    const/4 v3, -0x2

    move/from16 v0, v22

    if-eq v3, v0, :cond_6

    .line 1722
    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_7

    .line 1723
    const-string v3, "data6"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1728
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/htccontacts/HtcSendContactActivity;->newImEntry(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v28

    .line 1730
    .local v28, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    if-eqz v28, :cond_3

    .line 1731
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1716
    .end local v28           #viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :catch_0
    move-exception v13

    .line 1717
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "HtcSendContactActivity"

    const-string v4, "buildphoneEntries e: "

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1718
    const/16 v22, -0x2

    goto :goto_1

    .line 1725
    .end local v13           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v3, v0, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8           #sLabel:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #sLabel:Ljava/lang/String;
    goto :goto_2
.end method

.method private buildMailEntries()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    .local v26, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v13, cacheEmails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v17

    .line 1554
    .local v17, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v17, :cond_1

    .line 1613
    :cond_0
    return-object v26

    .line 1556
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Entity;

    .line 1557
    .local v18, entity:Landroid/content/Entity;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 1558
    .local v16, entValues:Landroid/content/ContentValues;
    const-string v2, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1559
    .local v12, accountType:Ljava/lang/String;
    const-string v2, "data_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1560
    .local v14, dataSet:Ljava/lang/String;
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1563
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1565
    .local v24, rawContactId:J
    invoke-virtual/range {v18 .. v18}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Entity$NamedContentValues;

    .line 1567
    .local v28, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 1568
    .local v19, entryValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1570
    const-string v2, "mimetype"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1571
    .local v23, mimetype:Ljava/lang/String;
    if-eqz v23, :cond_3

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v27

    .line 1575
    .local v27, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v14, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v15

    .line 1579
    .local v15, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v15, :cond_3

    .line 1582
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1584
    .local v5, id:J
    const-string v2, "is_super_primary"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 1585
    .local v22, isSuperPrimaryValue:Ljava/lang/Integer;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v11, 0x1

    .line 1587
    .local v11, isSuperPrimary:Z
    :goto_1
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1589
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    .line 1592
    .local v9, sData:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v8

    .line 1593
    .local v8, sLabel:Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1599
    :goto_2
    const/16 v29, 0x0

    .line 1600
    .local v29, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const v7, 0x2080a9c

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/htccontacts/HtcSendContactActivity;->newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v29

    .line 1601
    if-eqz v29, :cond_3

    .line 1603
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1607
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1585
    .end local v8           #sLabel:Ljava/lang/String;
    .end local v9           #sData:Ljava/lang/String;
    .end local v11           #isSuperPrimary:Z
    .end local v29           #viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 1596
    .restart local v8       #sLabel:Ljava/lang/String;
    .restart local v9       #sData:Ljava/lang/String;
    .restart local v11       #isSuperPrimary:Z
    :cond_6
    const v2, 0x7f0a005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private buildNicknameEntries()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    .line 1859
    .local v5, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v5, :cond_1

    .line 1928
    :cond_0
    return-object v16

    .line 1861
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 1862
    .local v6, entity:Landroid/content/Entity;
    invoke-virtual {v6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1863
    .local v4, entValues:Landroid/content/ContentValues;
    const-string v22, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1864
    .local v2, accountType:Ljava/lang/String;
    const-string v22, "data_set"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, dataSet:Ljava/lang/String;
    const-string v22, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1867
    .local v14, rawContactId:J
    const-string v22, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1880
    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 1883
    .local v20, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1884
    .local v7, entryValues:Landroid/content/ContentValues;
    const-string v22, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1886
    const-string v22, "mimetype"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1887
    .local v13, mimetype:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v19

    .line 1891
    .local v19, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v12

    .line 1896
    .local v12, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v12, :cond_3

    .line 1899
    const-string v22, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1901
    .local v10, id:J
    const-string v22, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1902
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v12, v7, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v18

    .line 1903
    .local v18, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 1904
    .local v17, sData:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 1907
    if-nez v18, :cond_4

    .line 1908
    const v22, 0x7f0a0058

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1915
    :cond_4
    new-instance v21, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct/range {v21 .. v21}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1916
    .local v21, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1917
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1919
    move-object/from16 v0, v21

    iput-wide v10, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1921
    if-eqz v21, :cond_3

    .line 1922
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private buildNotesEntries()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1741
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1743
    .local v21, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v11

    .line 1744
    .local v11, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v11, :cond_1

    .line 1789
    :cond_0
    return-object v21

    .line 1746
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 1747
    .local v12, entity:Landroid/content/Entity;
    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v10

    .line 1748
    .local v10, entValues:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1749
    .local v8, accountType:Ljava/lang/String;
    const-string v2, "data_set"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1750
    .local v9, dataSet:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1752
    .local v19, rawContactId:J
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1755
    invoke-virtual {v12}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Entity$NamedContentValues;

    .line 1757
    .local v23, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v23

    iget-object v13, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1758
    .local v13, entryValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1760
    const-string v2, "mimetype"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1761
    .local v18, mimetype:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v22

    .line 1765
    .local v22, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v17

    .line 1769
    .local v17, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v17, :cond_3

    .line 1772
    const-string v2, "_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1773
    .local v6, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1775
    .local v5, uri:Landroid/net/Uri;
    const-string v2, "vnd.android.cursor.item/note"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1776
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    .line 1777
    .local v4, sData:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1778
    .local v14, filterText:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/HtcSendContactActivity;->newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v24

    .line 1782
    .local v24, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    if-eqz v24, :cond_3

    .line 1783
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildOrganizationEntries()Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v18, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v7

    .line 1796
    .local v7, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v7, :cond_1

    .line 1852
    :cond_0
    return-object v18

    .line 1798
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;

    .line 1799
    .local v8, entity:Landroid/content/Entity;
    invoke-virtual {v8}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 1800
    .local v6, entValues:Landroid/content/ContentValues;
    const-string v25, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1801
    .local v2, accountType:Ljava/lang/String;
    const-string v25, "data_set"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1802
    .local v4, dataSet:Ljava/lang/String;
    const-string v25, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1804
    .local v16, rawContactId:J
    const-string v25, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 1808
    invoke-virtual {v8}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Entity$NamedContentValues;

    .line 1810
    .local v22, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v22

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1811
    .local v9, entryValues:Landroid/content/ContentValues;
    const-string v25, "raw_contact_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1813
    const-string v25, "mimetype"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1814
    .local v15, mimetype:Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v21

    .line 1818
    .local v21, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4, v15}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v14

    .line 1822
    .local v14, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v14, :cond_3

    .line 1825
    const-string v25, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1827
    .local v12, id:J
    const-string v25, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1828
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v14, v9, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v20

    .line 1829
    .local v20, sLabel:Ljava/lang/String;
    const-string v25, "data1"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1830
    .local v3, company:Ljava/lang/String;
    const-string v25, "data4"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1831
    .local v23, title:Ljava/lang/String;
    if-eqz v3, :cond_5

    move-object/from16 v19, v3

    .line 1832
    .local v19, sData:Ljava/lang/String;
    :goto_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v23, :cond_6

    .end local v23           #title:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1834
    new-instance v24, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct/range {v24 .. v24}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1835
    .local v24, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    const v25, 0x7f0a01b7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1839
    .local v5, detailBuilder:Ljava/lang/StringBuilder;
    if-nez v19, :cond_4

    const-string v19, ""

    .end local v19           #sData:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1841
    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1843
    move-object/from16 v0, v24

    iput-wide v12, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1845
    if-eqz v24, :cond_3

    .line 1846
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1831
    .end local v5           #detailBuilder:Ljava/lang/StringBuilder;
    .end local v24           #viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .restart local v23       #title:Ljava/lang/String;
    :cond_5
    const-string v19, ""

    goto :goto_1

    .line 1832
    .restart local v19       #sData:Ljava/lang/String;
    :cond_6
    const-string v23, ""

    goto :goto_2
.end method

.method private buildPostalEntries()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1617
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .local v22, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v13

    .line 1620
    .local v13, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v13, :cond_1

    .line 1665
    :cond_0
    return-object v22

    .line 1622
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity;

    .line 1623
    .local v14, entity:Landroid/content/Entity;
    invoke-virtual {v14}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    .line 1624
    .local v12, entValues:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1625
    .local v10, accountType:Ljava/lang/String;
    const-string v2, "data_set"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1626
    .local v11, dataSet:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 1628
    .local v20, rawContactId:J
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1632
    invoke-virtual {v14}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity$NamedContentValues;

    .line 1634
    .local v24, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v24

    iget-object v15, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1635
    .local v15, entryValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1637
    const-string v2, "mimetype"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1638
    .local v19, mimetype:Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v23

    .line 1642
    .local v23, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v18

    .line 1647
    .local v18, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v18, :cond_3

    .line 1650
    const-string v2, "_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1651
    .local v4, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1653
    .local v3, uri:Landroid/net/Uri;
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v7

    .line 1655
    .local v7, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v8

    .line 1657
    .local v8, sData:Ljava/lang/String;
    const v6, 0x20801cb

    const/4 v9, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/htccontacts/HtcSendContactActivity;->newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v25

    .line 1658
    .local v25, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    if-eqz v25, :cond_3

    .line 1659
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildWebsiteEntries()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1932
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    .line 1935
    .local v5, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v5, :cond_1

    .line 1986
    :cond_0
    return-object v16

    .line 1937
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 1938
    .local v6, entity:Landroid/content/Entity;
    invoke-virtual {v6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1939
    .local v4, entValues:Landroid/content/ContentValues;
    const-string v22, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1940
    .local v2, accountType:Ljava/lang/String;
    const-string v22, "data_set"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1941
    .local v3, dataSet:Ljava/lang/String;
    const-string v22, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1943
    .local v14, rawContactId:J
    const-string v22, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1947
    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 1949
    .local v20, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1950
    .local v7, entryValues:Landroid/content/ContentValues;
    const-string v22, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1952
    const-string v22, "mimetype"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1953
    .local v13, mimetype:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v19

    .line 1957
    .local v19, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v12

    .line 1962
    .local v12, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v12, :cond_3

    .line 1965
    const-string v22, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1967
    .local v10, id:J
    const-string v22, "vnd.android.cursor.item/website"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1969
    const v22, 0x7f0a005a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1970
    .local v18, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 1972
    .local v17, sData:Ljava/lang/String;
    new-instance v21, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct/range {v21 .. v21}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1973
    .local v21, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1974
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1975
    const/16 v22, 0x9

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1977
    move-object/from16 v0, v21

    iput-wide v10, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1979
    if-eqz v21, :cond_3

    .line 1980
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private buildphoneEntries()Ljava/util/ArrayList;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v33, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    .local v18, cacheTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    .local v17, cacheNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v23

    .line 1309
    .local v23, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v23, :cond_1

    .line 1387
    :cond_0
    return-object v33

    .line 1311
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity;

    .line 1312
    .local v24, entity:Landroid/content/Entity;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v22

    .line 1313
    .local v22, entValues:Landroid/content/ContentValues;
    const-string v3, "account_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1314
    .local v14, accountType:Ljava/lang/String;
    const-string v3, "data_set"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1315
    .local v19, dataSet:Ljava/lang/String;
    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1318
    const-string v3, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 1320
    .local v31, rawContactId:J
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 1322
    .local v35, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    .line 1323
    .local v25, entryValues:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1325
    const-string v3, "mimetype"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1326
    .local v30, mimetype:Ljava/lang/String;
    if-eqz v30, :cond_3

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v34

    .line 1330
    .local v34, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v20

    .line 1333
    .local v20, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v20, :cond_3

    .line 1336
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1337
    .local v7, id:J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1339
    .local v9, uri:Landroid/net/Uri;
    const-string v3, "is_super_primary"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    .line 1340
    .local v29, isSuperPrimaryValue:Ljava/lang/Integer;
    if-eqz v29, :cond_7

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v11, 0x1

    .line 1342
    .local v11, isSuperPrimary:Z
    :goto_1
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1344
    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1345
    const v3, 0x7f0a0027

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1354
    .local v5, sLabel:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->buildDataString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, sData:Ljava/lang/String;
    const/4 v10, -0x1

    .line 1357
    .local v10, nType:I
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1359
    :try_start_0
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1366
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-wide v12, v3, Lcom/android/htccontacts/HtcContactInfo;->id:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/android/htccontacts/HtcSendContactActivity;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZJ)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v36

    .line 1367
    .local v36, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1368
    if-eqz v36, :cond_3

    .line 1369
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1370
    const/16 v26, 0x0

    .local v26, i:I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_a

    .line 1371
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1372
    .local v16, cType:I
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1374
    .local v15, cNumber:Ljava/lang/String;
    move/from16 v0, v16

    if-ne v0, v10, :cond_5

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1370
    :cond_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 1340
    .end local v5           #sLabel:Ljava/lang/String;
    .end local v6           #sData:Ljava/lang/String;
    .end local v10           #nType:I
    .end local v11           #isSuperPrimary:Z
    .end local v15           #cNumber:Ljava/lang/String;
    .end local v16           #cType:I
    .end local v26           #i:I
    .end local v36           #viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1347
    .restart local v11       #isSuperPrimary:Z
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->buildActionString(Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v5

    .line 1348
    .restart local v5       #sLabel:Ljava/lang/String;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1351
    :cond_9
    const v3, 0x7f0a005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1360
    .restart local v6       #sData:Ljava/lang/String;
    .restart local v10       #nType:I
    :catch_0
    move-exception v21

    .line 1361
    .local v21, e:Ljava/lang/Exception;
    const-string v3, "HtcSendContactActivity"

    const-string v4, "buildphoneEntries e: "

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1362
    const/4 v10, -0x1

    goto/16 :goto_3

    .line 1380
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v36       #viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_a
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private checkAllUnSelectedOrNot()V
    .locals 5

    .prologue
    .line 759
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getCount()I

    move-result v2

    .line 760
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 761
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 762
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget-boolean v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    if-eqz v3, :cond_0

    .line 763
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 770
    .end local v0           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :goto_1
    return-void

    .line 760
    .restart local v0       #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v0           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private dataChanged()V
    .locals 2

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    if-eqz v1, :cond_0

    .line 842
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 843
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 846
    .end local v0           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->buildEntries()V

    .line 847
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    if-nez v1, :cond_1

    .line 848
    new-instance v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    .line 852
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 854
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->checkAllUnSelectedOrNot()V

    .line 855
    return-void

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private doSend()V
    .locals 24

    .prologue
    .line 533
    const/4 v2, 0x0

    .line 534
    .local v2, composer:Lcom/android/vcard/VCardComposer;
    const/16 v22, 0x0

    .line 535
    .local v22, writer:Ljava/io/Writer;
    const-string v4, "HtcSendContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, _id:Ljava/lang/String;
    const-string v16, "_id=?"

    .line 540
    .local v16, selection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    aput-object v8, v17, v4

    .line 543
    .local v17, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v4, v4, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 544
    const v4, 0x7f0a0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 549
    .local v19, tmpFilename:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/vcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    .line 554
    const/4 v13, 0x0

    .line 555
    .local v13, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    .line 558
    .local v15, selected_pos:I
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isGmailAppExists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 560
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .local v14, outputStream:Ljava/io/OutputStream;
    :try_start_2
    new-instance v23, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 562
    .end local v22           #writer:Ljava/io/Writer;
    .local v23, writer:Ljava/io/Writer;
    :try_start_3
    const-string v4, "HtcSendContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vCard file is created, filename:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    move-object/from16 v22, v23

    .line 567
    .end local v23           #writer:Ljava/io/Writer;
    .restart local v22       #writer:Ljava/io/Writer;
    :cond_0
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 568
    new-instance v10, Lcom/android/vcard/VCardComposer;

    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getSelectedColumns()[Ljava/lang/Long;

    move-result-object v4

    const v5, 0x18000008

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;[Ljava/lang/Long;I)V

    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .local v10, composer:Lcom/android/vcard/VCardComposer;
    move-object v2, v10

    .line 574
    .end local v10           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    if-eqz v4, :cond_6

    .line 575
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 576
    .local v3, profile_uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v2 .. v7}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 577
    const-string v4, "HtcSendContactActivity"

    const-string v5, "VCardComposer init failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 610
    .end local v3           #profile_uri:Landroid/net/Uri;
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 611
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 615
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-nez v4, :cond_a

    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->startActivityToSendVcard()V

    .line 644
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->finish()V

    .line 646
    return-void

    .line 546
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v15           #selected_pos:I
    .end local v19           #tmpFilename:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v0, v4, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    move-object/from16 v19, v0

    .restart local v19       #tmpFilename:Ljava/lang/String;
    goto/16 :goto_0

    .line 563
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    .restart local v15       #selected_pos:I
    :catch_0
    move-exception v11

    .line 564
    .local v11, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string v4, "HtcSendContactActivity"

    const-string v5, "FileNotFoundException"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 610
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v15           #selected_pos:I
    :catchall_0
    move-exception v4

    :goto_6
    if-eqz v2, :cond_4

    .line 611
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 610
    :cond_4
    throw v4

    .line 571
    .restart local v15       #selected_pos:I
    :cond_5
    :try_start_6
    new-instance v10, Lcom/android/vcard/VCardComposer;

    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getSelectedColumns()[Ljava/lang/Long;

    move-result-object v4

    sget v5, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;[Ljava/lang/Long;I)V

    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v10       #composer:Lcom/android/vcard/VCardComposer;
    move-object v2, v10

    .end local v10           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_2

    .line 581
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 582
    const-string v4, "HtcSendContactActivity"

    const-string v5, "VCardComposer init failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 587
    :cond_7
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v18

    .line 588
    .local v18, size:I
    const-string v4, "HtcSendContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_8
    :goto_7
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 591
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v21

    .line 592
    .local v21, vcard:Ljava/lang/String;
    if-nez v21, :cond_9

    .line 593
    const-string v4, "HtcSendContactActivity"

    const-string v5, "composer.createOneEntry() returns null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 597
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 599
    if-eqz v22, :cond_8

    .line 601
    :try_start_7
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    .line 602
    :catch_1
    move-exception v11

    .line 603
    .local v11, e:Ljava/io/IOException;
    :try_start_8
    const-string v4, "HtcSendContactActivity"

    const-string v5, "IOException"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 618
    .end local v11           #e:Ljava/io/IOException;
    .end local v18           #size:I
    .end local v21           #vcard:Ljava/lang/String;
    :cond_a
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 619
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v4, v4, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 621
    const-string v4, "name"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v5, v5, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    :goto_8
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 626
    const-string v4, "SHIFT_JIS"

    invoke-static {v4}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    .line 628
    .local v9, charset:Ljava/lang/String;
    :try_start_9
    const-string v4, "result"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2

    .line 637
    .end local v9           #charset:Ljava/lang/String;
    :goto_9
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 640
    .local v20, uri:Landroid/net/Uri;
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    .end local v20           #uri:Landroid/net/Uri;
    :cond_b
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/android/htccontacts/HtcSendContactActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_4

    .line 623
    :cond_c
    const-string v4, "name"

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 629
    .restart local v9       #charset:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 630
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "HtcSendContactActivity"

    const-string v5, "UnsupportedEncodingException"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    const-string v4, "result"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_9

    .line 635
    .end local v9           #charset:Ljava/lang/String;
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    :cond_d
    const-string v4, "result"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_9

    .line 610
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_6

    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v22           #writer:Ljava/io/Writer;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    .restart local v23       #writer:Ljava/io/Writer;
    :catchall_2
    move-exception v4

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    move-object/from16 v22, v23

    .end local v23           #writer:Ljava/io/Writer;
    .restart local v22       #writer:Ljava/io/Writer;
    goto/16 :goto_6

    .line 563
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v11

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_5

    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v22           #writer:Ljava/io/Writer;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    .restart local v23       #writer:Ljava/io/Writer;
    :catch_4
    move-exception v11

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    move-object/from16 v22, v23

    .end local v23           #writer:Ljava/io/Writer;
    .restart local v22       #writer:Ljava/io/Writer;
    goto/16 :goto_5
.end method

.method private getDisplayNameId()J
    .locals 17

    .prologue
    .line 1484
    const-wide/16 v12, -0x1

    .line 1485
    .local v12, rtn:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v15}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v4

    .line 1486
    .local v4, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v4, :cond_0

    move-wide v15, v12

    .line 1517
    :goto_0
    return-wide v15

    .line 1488
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 1489
    .local v5, entity:Landroid/content/Entity;
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 1490
    .local v3, entValues:Landroid/content/ContentValues;
    const-string v15, "account_type"

    invoke-virtual {v3, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity$NamedContentValues;

    .line 1494
    .local v14, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v14, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1496
    .local v6, entryValues:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1497
    .local v11, mimetype:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1500
    const-string v15, "_id"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1502
    .local v9, id:J
    const-string v15, "vnd.android.cursor.item/name"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1503
    move-wide v12, v9

    .line 1504
    const-string v15, "data1"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1505
    .local v2, data1:Ljava/lang/String;
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v15, v15, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1506
    const-string v15, "com.htc.socialnetwork.facebook"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1508
    const-wide/16 v15, -0x1

    goto :goto_0

    :cond_3
    move-wide v15, v12

    .line 1510
    goto :goto_0

    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #data1:Ljava/lang/String;
    .end local v3           #entValues:Landroid/content/ContentValues;
    .end local v5           #entity:Landroid/content/Entity;
    .end local v6           #entryValues:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #id:J
    .end local v11           #mimetype:Ljava/lang/String;
    .end local v14           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_4
    move-wide v15, v12

    .line 1517
    goto :goto_0
.end method

.method private getDrawableIdOfPhoneType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1031
    const v0, 0x20801cc

    .line 1033
    .local v0, result:I
    packed-switch p1, :pswitch_data_0

    .line 1069
    :pswitch_0
    const v0, 0x20801cc

    .line 1073
    :goto_0
    return v0

    .line 1035
    :pswitch_1
    const v0, 0x20801cc

    .line 1036
    goto :goto_0

    .line 1039
    :pswitch_2
    const v0, 0x20801c9

    .line 1040
    goto :goto_0

    .line 1045
    :pswitch_3
    const v0, 0x20801d3

    .line 1046
    goto :goto_0

    .line 1048
    :pswitch_4
    const v0, 0x20801cd

    .line 1049
    goto :goto_0

    .line 1052
    :pswitch_5
    const v0, 0x20801c5

    .line 1053
    goto :goto_0

    .line 1055
    :pswitch_6
    const v0, 0x20801ce

    .line 1056
    goto :goto_0

    .line 1058
    :pswitch_7
    const v0, 0x20801c6

    .line 1059
    goto :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getPhotoId()J
    .locals 24

    .prologue
    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->clear()V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/database/MatrixCursor;->close()V

    .line 1395
    :cond_0
    new-instance v20, Landroid/database/MatrixCursor;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "_id"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "photo_id"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "account_type"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-string v23, "data_set"

    aput-object v23, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v6

    .line 1397
    .local v6, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v6, :cond_2

    .line 1398
    const-wide/16 v16, 0x0

    .line 1480
    :cond_1
    :goto_0
    return-wide v16

    .line 1399
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    .line 1400
    .local v7, entity:Landroid/content/Entity;
    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 1402
    .local v5, entValues:Landroid/content/ContentValues;
    const-string v20, "account_type"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1403
    .local v3, accountType:Ljava/lang/String;
    const-string v20, "data_set"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1405
    .local v4, dataSet:Ljava/lang/String;
    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1407
    .local v14, rawContactId:Ljava/lang/Long;
    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Entity$NamedContentValues;

    .line 1409
    .local v19, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1411
    .local v8, entryValues:Landroid/content/ContentValues;
    const-string v20, "mimetype"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1412
    .local v12, mimetype:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 1415
    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 1417
    .local v11, id:Ljava/lang/Long;
    const-string v20, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1418
    const-string v20, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFacebookPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1423
    :cond_5
    const-string v20, "data7"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 1424
    .local v18, socialNetwork:Ljava/lang/Long;
    if-eqz v18, :cond_b

    .line 1425
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_6

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFacebookPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1431
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    .line 1432
    const-string v3, "com.htc.socialnetwork.flickr"

    .line 1453
    :goto_2
    const-string v20, "data15"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 1454
    .local v13, photoBytes:[B
    if-eqz v13, :cond_4

    array-length v0, v13

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1458
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v15, v20

    const/16 v20, 0x1

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v15, v20

    const/16 v20, 0x2

    aput-object v3, v15, v20

    const/16 v20, 0x3

    aput-object v4, v15, v20

    .line 1459
    .local v15, row:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1461
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1462
    .local v2, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mAccountNames:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1433
    .end local v2           #accountName:Ljava/lang/String;
    .end local v13           #photoBytes:[B
    .end local v15           #row:[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    .line 1434
    const-string v3, "com.htc.htctwitter"

    goto :goto_2

    .line 1435
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x4

    cmp-long v20, v20, v22

    if-nez v20, :cond_9

    .line 1436
    const-string v3, "com.htc.socialnetwork.plurk"

    goto :goto_2

    .line 1438
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1439
    const-string v3, "DeviceOnly"

    goto :goto_2

    .line 1441
    :cond_a
    const-string v3, "com.htc.android.pcsc"

    goto :goto_2

    .line 1445
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1446
    const-string v3, "DeviceOnly"

    goto/16 :goto_2

    .line 1448
    :cond_c
    const-string v3, "com.htc.android.pcsc"

    goto/16 :goto_2

    .line 1467
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #entValues:Landroid/content/ContentValues;
    .end local v7           #entity:Landroid/content/Entity;
    .end local v8           #entryValues:Landroid/content/ContentValues;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #id:Ljava/lang/Long;
    .end local v12           #mimetype:Ljava/lang/String;
    .end local v14           #rawContactId:Ljava/lang/Long;
    .end local v18           #socialNetwork:Ljava/lang/Long;
    .end local v19           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/HtcContactInfo;->getThumbnailId()J

    move-result-wide v16

    .line 1468
    .local v16, rtn:J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    if-lez v20, :cond_e

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1472
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mFacebookPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    if-lez v20, :cond_f

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto/16 :goto_0

    .line 1476
    :cond_f
    const-wide/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private getSelectedColumns()[Ljava/lang/Long;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 731
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 732
    .local v0, arr:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getCount()I

    move-result v3

    .line 733
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 734
    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 737
    .local v1, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget v5, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 738
    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    array-length v5, v5

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 733
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    :cond_1
    iget-boolean v5, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    if-eqz v5, :cond_0

    .line 743
    iget-wide v5, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 747
    .end local v1           #entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 748
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Long;

    .line 754
    :cond_3
    return-object v4

    .line 750
    :cond_4
    new-array v5, v7, [Ljava/lang/Long;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 751
    .local v4, rtn:[Ljava/lang/Long;
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 752
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private isBTAppExists()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 497
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 499
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return v1

    .line 501
    :catch_0
    move-exception v1

    .line 503
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGmailAppExists()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method private isHtcMailAppExists()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 475
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 477
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.ComposeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return v1

    .line 479
    :catch_0
    move-exception v1

    .line 481
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMMSAppExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v3

    .line 459
    :cond_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd2

    if-eq v5, v6, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 464
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v6, "text/x-vCard"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 468
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    move v3, v4

    .line 469
    goto :goto_0
.end method

.method private isSMSAppExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v3

    .line 419
    :cond_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd2

    if-eq v5, v6, :cond_0

    .line 424
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isKDDI()Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    const-wide/high16 v5, 0x4000

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 438
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v6, "text/plain"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 442
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    move v3, v4

    .line 443
    goto :goto_0
.end method

.method private newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "data"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 1247
    new-instance v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1248
    .local v3, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    if-eqz p2, :cond_0

    .line 1249
    const-string v4, "contact_methods"

    invoke-static {p2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1250
    .local v2, methodsUri:Landroid/net/Uri;
    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1253
    .end local v2           #methodsUri:Landroid/net/Uri;
    :cond_0
    const v4, 0x20801c8

    iput v4, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->leftIconId:I

    .line 1255
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    invoke-static {p1, v4, p8, p6}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 1256
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p6

    .end local p6
    :cond_1
    iput-object p6, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1261
    iput-object p7, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1262
    if-eqz p9, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0178

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text4:Ljava/lang/String;

    .line 1263
    iput-wide p3, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1264
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1265
    iput-boolean p9, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isPrimary:Z

    .line 1266
    invoke-static {p7}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1267
    .local v1, intent:Landroid/content/Intent;
    iput-object v1, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1269
    return-object v3

    .line 1262
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 3
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "address"
    .parameter "type"

    .prologue
    .line 1273
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1275
    .local v0, viewEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1277
    iput-object p1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1278
    iput p4, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->leftIconId:I

    .line 1279
    iput-object p5, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1280
    iput-object p6, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1281
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1282
    iput-wide p2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1284
    return-object v0
.end method

.method private newImEntry(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "label"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 1288
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1290
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iput-object p5, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1291
    iput-object p6, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1292
    if-eqz p2, :cond_0

    .line 1293
    const-string v2, "contact_methods"

    invoke-static {p2, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1294
    .local v1, methodsUri:Landroid/net/Uri;
    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1296
    .end local v1           #methodsUri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1297
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->enabled:Z

    .line 1298
    iput-wide p3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1300
    return-object v0
.end method

.method private newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 1118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const/4 v0, 0x0

    .line 1125
    :goto_0
    return-object v0

    .line 1121
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1122
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iput-object p1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1123
    iput-boolean v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->enabled:Z

    .line 1124
    iput-boolean v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    goto :goto_0
.end method

.method private newNameEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 5
    .parameter "context"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1534
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1535
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1536
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1537
    iput-object p2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1538
    iput-object p3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1539
    iput-wide p4, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1540
    const/16 v2, 0xb

    iput v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1541
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 1542
    iput-boolean v4, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->enabled:Z

    .line 1543
    iput-boolean v4, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    .line 1546
    :cond_0
    return-object v0
.end method

.method private newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 1521
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1522
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1523
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1524
    iput-object p2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1525
    iput-object p3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1526
    iput-wide p4, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1527
    const/4 v2, 0x6

    iput v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1530
    return-object v0
.end method

.method private newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 7
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    const/high16 v6, 0x1000

    const/4 v4, 0x0

    .line 1222
    if-nez p1, :cond_0

    .line 1243
    :goto_0
    return-object v4

    .line 1226
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1228
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    move-object v1, p2

    .line 1230
    .local v1, localLabel:Ljava/lang/String;
    iput-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1231
    iput-object p3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    .line 1232
    iput-wide p4, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1233
    iput-object p6, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1234
    invoke-direct {p0, p7}, Lcom/android/htccontacts/HtcSendContactActivity;->getDrawableIdOfPhoneType(I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->leftIconId:I

    .line 1235
    if-eqz p8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0178

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text4:Ljava/lang/String;

    .line 1237
    const-string v3, "tel"

    invoke-static {v3, p3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1238
    .local v2, uriTemp:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1239
    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1240
    iget-object v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1241
    iput-boolean p8, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isPrimary:Z

    move-object v4, v0

    .line 1243
    goto :goto_0

    .end local v2           #uriTemp:Landroid/net/Uri;
    :cond_1
    move-object v3, v4

    .line 1235
    goto :goto_1
.end method

.method private newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZJ)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 1
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"
    .parameter "personId"

    .prologue
    .line 1212
    if-nez p1, :cond_0

    .line 1213
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return-object v0

    .line 1215
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/android/htccontacts/HtcSendContactActivity;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    move-result-object v0

    .line 1217
    .local v0, phoneEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    goto :goto_0
.end method

.method private newPhotoEntry(Landroid/content/res/Resources;J)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 4
    .parameter "res"
    .parameter "id"

    .prologue
    .line 1184
    if-nez p1, :cond_0

    .line 1185
    const/4 v1, 0x0

    .line 1194
    :goto_0
    return-object v1

    .line 1188
    :cond_0
    new-instance v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1189
    .local v1, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAccountNames:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1190
    .local v0, accountName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0218

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1191
    iput-wide p2, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1192
    const/16 v2, 0xa

    iput v2, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    goto :goto_0
.end method

.method private newSendViaEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    .locals 3
    .parameter "res"

    .prologue
    .line 1199
    if-nez p1, :cond_0

    .line 1200
    const/4 v0, 0x0

    .line 1208
    :goto_0
    return-object v0

    .line 1203
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;-><init>()V

    .line 1205
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    iget v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1206
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    .line 1207
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    goto :goto_0
.end method

.method private declared-synchronized pickPhoto()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 2222
    monitor-enter p0

    const/4 v3, 0x0

    .line 2223
    .local v3, d:Landroid/app/Dialog;
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    .line 2224
    .local v2, c:Landroid/database/MatrixCursor;
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 2225
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 2226
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2227
    .local v4, list:Landroid/widget/ListView;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0284

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 2229
    .local v1, adbPhoto:Lcom/htc/widget/HtcAlertDialog;
    new-instance v0, Lcom/android/htccontacts/link/pickPhotoAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/htccontacts/link/pickPhotoAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2230
    .local v0, ad:Lcom/android/htccontacts/link/pickPhotoAdapter;
    const/4 v5, 0x6

    invoke-virtual {v0, p0, v5}, Lcom/android/htccontacts/link/pickPhotoAdapter;->newStaticView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2232
    new-instance v5, Lcom/android/htccontacts/link/pickPhotoAdapter;

    invoke-direct {v5, p0, v2}, Lcom/android/htccontacts/link/pickPhotoAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2233
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080700

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2234
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 2236
    new-instance v5, Lcom/android/htccontacts/HtcSendContactActivity$7;

    invoke-direct {v5, p0, v1}, Lcom/android/htccontacts/HtcSendContactActivity$7;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2254
    move-object v3, v1

    .line 2258
    .end local v0           #ad:Lcom/android/htccontacts/link/pickPhotoAdapter;
    .end local v1           #adbPhoto:Lcom/htc/widget/HtcAlertDialog;
    .end local v4           #list:Landroid/widget/ListView;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 2222
    .end local v2           #c:Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private pickSendVia()Lcom/htc/widget/HtcAlertDialog;
    .locals 9

    .prologue
    .line 2175
    const/4 v6, 0x0

    .line 2177
    .local v6, adbName:Lcom/htc/widget/HtcAlertDialog;
    new-instance v7, Lcom/android/htccontacts/HtcSendContactActivity$5;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/HtcSendContactActivity$5;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 2186
    .local v7, clPickName:Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v8, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2187
    .local v8, dialogContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2190
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/HtcSendContactActivity$6;

    const v3, 0x2090007

    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/HtcSendContactActivity$6;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/view/LayoutInflater;)V

    .line 2207
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 2208
    return-object v6
.end method

.method private removePhotoItemImage()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 1150
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactInfo;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 1151
    iget-boolean v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    if-eqz v3, :cond_1

    .line 1152
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const v4, 0x7f0a00e6

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 1156
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->hideLinkView()V

    .line 1157
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iput-wide v5, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1158
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v3, v5, v6}, Lcom/android/htccontacts/HtcContactInfo;->setThumbnailId(J)V

    .line 1160
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfo;->isAllSimAccountTyupe()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1162
    const v2, 0x208025a

    .line 1167
    .local v2, resID:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1168
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1169
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iput-object v0, v3, Lcom/android/htccontacts/HtcContactInfo;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 1173
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    .line 1174
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0218

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0276

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1175
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v3, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->view:Landroid/view/View;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;

    .line 1176
    .local v1, item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v4, v4, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1178
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 1179
    return-void

    .line 1154
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    .end local v2           #resID:I
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const v4, 0x7f0a00e3

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1164
    :cond_2
    const v2, 0x2080243

    .restart local v2       #resID:I
    goto :goto_1
.end method

.method private replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 507
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 509
    .local v2, out:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 510
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 512
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 525
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :sswitch_0
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 529
    .end local v0           #ch:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private setEmptyList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 783
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 784
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 785
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 786
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 788
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 789
    return-void
.end method

.method private setPhotoItemImage(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1131
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoIds:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1132
    .local v2, photoId:J
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/htccontacts/HtcContactInfo;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 1133
    iget-boolean v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    if-eqz v4, :cond_0

    .line 1134
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const v5, 0x7f0a00e6

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 1138
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->hideLinkView()V

    .line 1139
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iput-wide v2, v4, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    .line 1140
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v4, v2, v3}, Lcom/android/htccontacts/HtcContactInfo;->setThumbnailId(J)V

    .line 1141
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    .line 1142
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAccountNames:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1143
    .local v0, accountName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0218

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 1144
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v4, v4, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->view:Landroid/view/View;

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;

    .line 1145
    .local v1, item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    iget-object v4, v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPhotoEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v5, v5, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1146
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 1148
    return-void

    .line 1136
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const v5, 0x7f0a00e3

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSendViaItem()V
    .locals 4

    .prologue
    .line 2212
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v1, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->view:Landroid/view/View;

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;

    .line 2213
    .local v0, item:Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    iget v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    .line 2214
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    iget-object v2, v2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2215
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->AddOrRemovePhotoEntry()V

    .line 2216
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->checkAllUnSelectedOrNot()V

    .line 2217
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 2218
    return-void
.end method

.method private startActivityToSendVcard()V
    .locals 8

    .prologue
    .line 650
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 651
    const v6, 0x7f0a0022

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, tmpFilename:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/htccontacts/HtcSendContactActivity;->replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 658
    iget v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I

    .line 659
    .local v3, selected_pos:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 660
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 661
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 662
    const-string v6, "name"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v7, v7, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    :goto_1
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 667
    const-string v6, "SHIFT_JIS"

    invoke-static {v6}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, charset:Ljava/lang/String;
    :try_start_0
    const-string v6, "result"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0           #charset:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 680
    .local v5, uri:Landroid/net/Uri;
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 683
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 684
    const-string v6, "android.intent.extra.EMAIL"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 687
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 727
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcSendContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 728
    return-void

    .line 653
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #selected_pos:I
    .end local v4           #tmpFilename:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    iget-object v4, v6, Lcom/android/htccontacts/HtcContactInfo;->sDisplayName:Ljava/lang/String;

    .restart local v4       #tmpFilename:Ljava/lang/String;
    goto/16 :goto_0

    .line 664
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #selected_pos:I
    :cond_4
    const-string v6, "name"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 670
    .restart local v0       #charset:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "HtcSendContactActivity"

    const-string v7, "UnsupportedEncodingException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    const-string v6, "result"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2

    .line 676
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    const-string v6, "result"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2

    .line 693
    :pswitch_0
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Send VCard via SMS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v6, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v7, "text/plain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 699
    :pswitch_1
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Send VCard via MMS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v6, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mVcard:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v7, "text/x-vCard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 706
    :pswitch_2
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Send VCard via Email"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v6, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v7, "text/x-vCard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 713
    :pswitch_3
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Send VCard via Gmail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v6, "com.google.android.gm"

    const-string v7, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v7, "text/x-vCard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 720
    :pswitch_4
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Send VCard via BlueTooth"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v6, "com.android.bluetooth"

    const-string v7, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    const-string v7, "text/x-vcard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected hideLinkView()V
    .locals 3

    .prologue
    .line 774
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 775
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 777
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 778
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 780
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f0a02c6

    const v11, 0x7f0a02c5

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 283
    const-string v6, "HtcSendContactActivity"

    const-string v7, "onCreate()..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/HtcSendContactActivity;->requestWindowFeature(I)Z

    .line 287
    const v6, 0x7f03003d

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcSendContactActivity;->setContentView(I)V

    .line 289
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/misc/vcard"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 295
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.htccontacts.ACTION_GET_VCARD"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    iput v8, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    .line 303
    :goto_0
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 305
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isMMSAppExists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b1

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 313
    :goto_1
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isSMSAppExists()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-nez v6, :cond_4

    .line 314
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b0

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 338
    :goto_2
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isHtcMailAppExists()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-nez v6, :cond_8

    .line 339
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    const v7, 0x7f0a02c7

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b3

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 346
    :goto_3
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isGmailAppExists()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-nez v6, :cond_9

    .line 347
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    const v7, 0x7f0a02c8

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b4

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_4
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isBTAppExists()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-nez v6, :cond_a

    .line 355
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    const v7, 0x7f0a02c9

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b2

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 362
    :goto_5
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    new-array v7, v8, [Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    iput-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVias:[Ljava/lang/Integer;

    .line 364
    const v6, 0x7f070080

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcSpinner;

    iput-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVia:Lcom/htc/widget/HtcSpinner;

    .line 365
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendVia:Lcom/htc/widget/HtcSpinner;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcSpinner;->setVisibility(I)V

    .line 375
    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    .line 376
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    .line 377
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mUri:Landroid/net/Uri;

    .line 378
    const-string v6, "isMyContactCard"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    .line 380
    new-instance v6, Lcom/android/htccontacts/HtcSendContactActivity$2;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/HtcSendContactActivity$2;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcSendContactActivity$2;->start()V

    .line 387
    const v6, 0x7f07002b

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcSendContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 388
    .local v1, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendButton:Lcom/htc/widget/HtcFooterButton;

    .line 389
    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-ne v6, v8, :cond_1

    .line 390
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendButton:Lcom/htc/widget/HtcFooterButton;

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 391
    iget-object v5, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendButton:Lcom/htc/widget/HtcFooterButton;

    .line 392
    .local v5, textview:Landroid/widget/TextView;
    const v6, 0x7f0a0160

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 395
    .end local v5           #textview:Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v7, Lcom/android/htccontacts/HtcSendContactActivity$3;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/HtcSendContactActivity$3;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    .line 402
    .local v2, cancelButton:Landroid/view/View;
    new-instance v6, Lcom/android/htccontacts/HtcSendContactActivity$4;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/HtcSendContactActivity$4;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 409
    return-void

    .line 300
    .end local v1           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .end local v2           #cancelButton:Landroid/view/View;
    :cond_2
    iput v9, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    goto/16 :goto_0

    .line 310
    :cond_3
    const-string v6, "HtcSendContactActivity"

    const-string v7, "MMS application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    :cond_4
    const-string v6, "HtcSendContactActivity"

    const-string v7, "SMS application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 321
    :cond_5
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isSMSAppExists()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mMode:I

    if-nez v6, :cond_6

    .line 322
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b0

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_6
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->isMMSAppExists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 330
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaNames:Ljava/util/Vector;

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendViaValues:Ljava/util/Vector;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v6, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSendContactTextViaNames:Ljava/util/Vector;

    const v7, 0x7f0a03b1

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 326
    :cond_6
    const-string v6, "HtcSendContactActivity"

    const-string v7, "SMS application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 334
    :cond_7
    const-string v6, "HtcSendContactActivity"

    const-string v7, "MMS application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 343
    :cond_8
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Mail application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 351
    :cond_9
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Gmail application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 359
    :cond_a
    const-string v6, "HtcSendContactActivity"

    const-string v7, "Mail application is not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 819
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 821
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    if-eqz v0, :cond_0

    .line 822
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->closeAllCursors()V

    .line 832
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->destroy()V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mPickPhotoCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V

    .line 838
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 274
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2147
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mAdapter:Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 2149
    .local v1, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 2150
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->pickPhoto()Landroid/app/Dialog;

    move-result-object v0

    .line 2151
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 2152
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2172
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 2158
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->pickSendVia()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2159
    .restart local v0       #d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 2165
    .end local v0           #d:Landroid/app/Dialog;
    :cond_2
    const v3, 0x7f070014

    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;

    .line 2166
    .local v2, item:Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;
    iget-object v3, v2, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2167
    iget-object v3, v2, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2169
    iget-boolean v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    .line 2170
    iget-object v3, v2, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v4, v1, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 2171
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->checkAllUnSelectedOrNot()V

    goto :goto_0

    .line 2169
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 793
    const-string v0, "HtcSendContactActivity"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    if-nez v0, :cond_0

    .line 796
    const-string v0, "HtcSendContactActivity"

    const-string v1, "no contact information"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->setEmptyList()V

    .line 798
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 815
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsDirty:Z

    if-eqz v0, :cond_1

    .line 803
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->dataChanged()V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsDirty:Z

    .line 806
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mIsMyContactCard:Z

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const v1, 0x7f0a00e6

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 811
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity;->hideLinkView()V

    .line 814
    :cond_1
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    goto :goto_0

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;

    const v1, 0x7f0a00e3

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcSendContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    goto :goto_1
.end method
