.class public Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.super Landroid/app/Activity;
.source "MediaAutoUploadSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;,
        Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;,
        Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;,
        Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    }
.end annotation


# static fields
.field public static final DEFAULT_SERVICE:Ljava/lang/String; = "Facebook"

.field private static final EUF_DAILY:I = 0x1

.field private static final EUF_IMMEDIATELY:I = 0x0

.field private static final EUF_WIFI_ONLY:I = 0x2

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "service_account_type"

.field public static final EXTRA_ALBUM:Ljava/lang/String; = "ALBUM"

.field public static final EXTRA_ALBUM_NAME:Ljava/lang/String; = "ALBUM_NAME"

.field public static final EXTRA_AUTO_UPLOAD:Ljava/lang/String; = "AUTO_UPLOAD"

.field public static final EXTRA_AUTO_UPLOAD_SSO:Ljava/lang/String; = "sso"

.field public static final EXTRA_AUTO_UPLOAD_SSO_ACTION:Ljava/lang/String; = "sso_action"

.field public static final EXTRA_AUTO_UPLOAD_SSO_LOGIN:Ljava/lang/String; = "sso_login"

.field private static final EXTRA_HOUR:Ljava/lang/String; = "SELECTED_HOUR"

.field private static final EXTRA_MIN:Ljava/lang/String; = "SELECTED_MIN"

.field public static final EXTRA_SERVICE:Ljava/lang/String; = "SERVICE"

.field public static final EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "SERVICE_COMPONENT"

.field public static final EXTRA_SERVICE_LABEL:Ljava/lang/String; = "SERVICE_LABEL"

.field public static final EXTRA_SERVICE_TITLE:Ljava/lang/String; = "SERVICE_TITLE"

.field public static final EXTRA_UPLOAD_FREQUENCY:Ljava/lang/String; = "UPLOAD_FREQUENCY"

.field public static final MESSAGE_GET_ALBUM_LIST:I = 0x100

.field public static final MESSAGE_RESULT_FAIL:I = 0x101

.field private static final REQUEST_CODE_SSO:I = 0x65

.field private static final REQUEST_CODE_TIME_PICKER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaAutoUploadSetting"

.field private static mInstance:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# instance fields
.field private mAccountMgrCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

.field private mAlbumDefault:Ljava/lang/String;

.field private mAlbumHeadView:Lcom/htc/widget/HtcListItem;

.field private mAlbumIndex:I

.field private mAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/social/data/Album;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private mCheckBoxAutoUpload:Lcom/htc/widget/HtcListItemCheckBox;

.field protected mDoneButton:Lcom/htc/widget/HtcFooterButton;

.field private mEnableAutoUpload:Z

.field private mEnableAutoUploadHeadView:Landroid/widget/RelativeLayout;

.field private mFirstLoginSuccess:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMoreImageView:Lcom/htc/widget/HtcListItemImageButton;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mProgressDlg:Lcom/htc/app/HtcProgressDialog;

.field private mReadablePrivacyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/social/data/Privacy;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/String;

.field private mServiceHeadView:Lcom/htc/widget/HtcListItem;

.field private mServiceIndex:I

.field private mServiceLabel:Ljava/lang/String;

.field private mServiceTitle:Ljava/lang/String;

.field private mServiceTitleTextView:Lcom/htc/widget/HtcListItem2LineText;

.field private mTimePick:J

.field private mTitleView:Lcom/htc/widget/HeaderBarText;

.field private mUploadFrequencies:[Ljava/lang/String;

.field private mUploadFrequency:I

.field private mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;

.field private mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

.field private mUploadServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mInstance:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    .line 102
    iput v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    .line 106
    const-string v0, "Facebook"

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    .line 134
    iput-boolean v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mFirstLoginSuccess:Z

    .line 148
    new-instance v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    invoke-direct {v0, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 959
    new-instance v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$6;

    invoke-direct {v0, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$6;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAccountMgrCallback:Landroid/accounts/AccountManagerCallback;

    .line 1041
    return-void
.end method

.method static synthetic access$000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mReadablePrivacyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mReadablePrivacyList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->restorePrivacySetting(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isLogin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->loginService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->setResultForOutgoingIntent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUploadHeadView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItemCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mCheckBoxAutoUpload:Lcom/htc/widget/HtcListItemCheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencies:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->launchTimePicker()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceHeadView:Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitleTextView:Lcom/htc/widget/HtcListItem2LineText;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->showBusyCursor()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->queryAlbumByService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->updatePrivacySetting(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadServiceComponent:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getTimeFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isRoundedListItemNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mFirstLoginSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAccountType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItemImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mMoreImageView:Lcom/htc/widget/HtcListItemImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumDefault:Ljava/lang/String;

    return-object p1
.end method

.method private addSeparator(I)V
    .locals 6
    .parameter "strID"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 483
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090026

    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, tempView:Landroid/view/View;
    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 485
    .local v1, label:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 487
    return-void
.end method

.method private convertFrequencyIntegerToString(I)Ljava/lang/String;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 1026
    if-nez p1, :cond_0

    .line 1028
    const-string v0, "immediately"

    .line 1038
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1032
    const-string v0, "wifi_only"

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1036
    iget-wide v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertFrequencyStringToInteger(Ljava/lang/String;)I
    .locals 5
    .parameter "frequency"

    .prologue
    .line 996
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 998
    :cond_0
    const/4 v1, 0x0

    .line 1021
    :goto_0
    return v1

    .line 1001
    :cond_1
    const-string v2, "immediately"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1003
    const/4 v1, 0x0

    .local v1, ret:I
    goto :goto_0

    .line 1005
    .end local v1           #ret:I
    :cond_2
    const-string v2, "wifi_only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1007
    const/4 v1, 0x2

    .restart local v1       #ret:I
    goto :goto_0

    .line 1011
    .end local v1           #ret:I
    :cond_3
    const/4 v1, 0x1

    .line 1014
    .restart local v1       #ret:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1017
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "MediaAutoUploadSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mInstance:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    return-object v0
.end method

.method private getTimeFormat(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 747
    new-instance v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/Date;)V

    .line 748
    .local v0, myTime:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;
    invoke-virtual {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->getTimeDate()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initAlbumItem()V
    .locals 5

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 447
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f070005

    invoke-direct {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->addSeparator(I)V

    .line 450
    const v1, 0x7f030002

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;

    .line 451
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isRoundedListItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;

    .line 457
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 460
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mMoreImageView:Lcom/htc/widget/HtcListItemImageButton;

    .line 461
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mMoreImageView:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 462
    return-void
.end method

.method private initEnableAutoUploadItem()V
    .locals 6

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 379
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, tempView:Landroid/view/View;
    const/high16 v3, 0x7f09

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUploadHeadView:Landroid/widget/RelativeLayout;

    .line 382
    const v3, 0x7f090002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mCheckBoxAutoUpload:Lcom/htc/widget/HtcListItemCheckBox;

    .line 383
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mCheckBoxAutoUpload:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 384
    const v3, 0x7f090001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;

    .line 385
    .local v2, text1:Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;
    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->setText(I)V

    .line 386
    const v3, 0x2030036

    invoke-virtual {v2, v3}, Lcom/htc/MediaAutoUploadSetting/MyHtcListItemSingleText;->setTextStyle(I)V

    .line 387
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 388
    return-void
.end method

.method private initFrequencyItem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 394
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;

    .line 395
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isRoundedListItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    .line 401
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencies:[Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencies:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 403
    iget v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    if-ne v1, v5, :cond_1

    .line 405
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-wide v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    invoke-direct {p0, v2, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 413
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0
.end method

.method private initPrivacyItem()V
    .locals 5

    .prologue
    .line 467
    const v0, 0x7f070006

    invoke-direct {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->addSeparator(I)V

    .line 470
    new-instance v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    const v1, 0x7f030001

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    .line 471
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 473
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    new-instance v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->add(Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->notifyDataSetChanged()V

    .line 475
    return-void
.end method

.method private initServiceItem()V
    .locals 5

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 420
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f070004

    invoke-direct {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->addSeparator(I)V

    .line 423
    const v1, 0x7f030002

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceHeadView:Lcom/htc/widget/HtcListItem;

    .line 424
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isRoundedListItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceHeadView:Lcom/htc/widget/HtcListItem;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceHeadView:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitleTextView:Lcom/htc/widget/HtcListItem2LineText;

    .line 430
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->setDefaultServiceIfAvailable(Ljava/lang/String;)V

    .line 431
    iget v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    if-ltz v1, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->showBusyCursor()V

    .line 434
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->queryAlbumByService(Ljava/lang/String;)V

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitleTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitleTextView:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceHeadView:Lcom/htc/widget/HtcListItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 440
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTitleView:Lcom/htc/widget/HeaderBarText;

    .line 339
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTitleView:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 340
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTitleView:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 342
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    .line 343
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 345
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setHeaderDividersEnabled(Z)V

    .line 347
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    .line 348
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$2;

    invoke-direct {v1, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$2;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 357
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 358
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$3;

    invoke-direct {v1, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$3;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initEnableAutoUploadItem()V

    .line 368
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initFrequencyItem()V

    .line 369
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initServiceItem()V

    .line 370
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initAlbumItem()V

    .line 371
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initPrivacyItem()V

    .line 372
    return-void
.end method

.method private isLogin(Ljava/lang/String;)Z
    .locals 2
    .parameter "account_type"

    .prologue
    .line 947
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 952
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 954
    const/4 v1, 0x1

    .line 956
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRoundedListItemNeeded()Z
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x1

    return v0
.end method

.method private launchTimePicker()V
    .locals 7

    .prologue
    .line 710
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 711
    .local v6, calendar:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 712
    .local v3, hour:I
    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 714
    .local v4, minute:I
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    new-instance v2, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;

    invoke-direct {v2, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$5;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 742
    .local v0, timePickerDialog:Lcom/htc/widget/HtcTimePickerDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 743
    return-void
.end method

.method private loginService(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAccountMgrCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 943
    return-void
.end method

.method private queryAlbumByService(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.providers.uploads.action.AUTO_UPLOAD_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v0, i:Landroid/content/Intent;
    const-string v1, "service_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "request"

    const-string v2, "get_album_list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    invoke-virtual {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    return-void
.end method

.method private restorePrivacySetting(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/social/data/Privacy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, readablePrivacyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Privacy;>;"
    const/4 v4, 0x0

    .line 795
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->clear()V

    .line 797
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 799
    :cond_0
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->notifyDataSetChanged()V

    .line 831
    :goto_0
    return-void

    .line 803
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Privacy;

    iget-object v1, v3, Lcom/htc/opensense/social/data/Privacy;->serverString:Ljava/lang/String;

    .line 806
    .local v1, default_privacy:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Album;

    .line 809
    .local v0, a:Lcom/htc/opensense/social/data/Album;
    iget-object v3, v0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 811
    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    goto :goto_2

    .end local v0           #a:Lcom/htc/opensense/social/data/Album;
    .end local v1           #default_privacy:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    move-object v1, v4

    .line 803
    goto :goto_1

    .line 816
    .restart local v1       #default_privacy:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    new-instance v5, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v4, v7}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->add(Ljava/lang/Object;)V

    .line 819
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I

    if-gt v3, v4, :cond_5

    .line 821
    const-string v3, "MediaAutoUploadSetting"

    const-string v4, "array out of bound!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_5
    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I

    invoke-direct {p0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->updatePrivacySetting(I)V

    .line 830
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setDefaultServiceIfAvailable(Ljava/lang/String;)V
    .locals 7
    .parameter "myService"

    .prologue
    const/4 v6, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 762
    .local v3, pkgMgr:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.providers.uploads.action.AUTO_UPLOAD_REQUEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 766
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 768
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 773
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 775
    iput v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    .line 776
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    .line 777
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    .line 790
    :goto_1
    return-void

    .line 766
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_2
    if-lez v0, :cond_3

    .line 781
    iput v6, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    .line 782
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    .line 783
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    goto :goto_1

    .line 787
    :cond_3
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    .line 788
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    goto :goto_1
.end method

.method private setResultForOutgoingIntent()V
    .locals 5

    .prologue
    .line 657
    const-string v2, "MediaAutoUploadSetting"

    const-string v3, "setResultForOutgoingIntent+++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 661
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "AUTO_UPLOAD"

    iget-boolean v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    const-string v2, "UPLOAD_FREQUENCY"

    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    invoke-direct {p0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->convertFrequencyIntegerToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v2, "MediaAutoUploadSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTO_UPLOAD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v2, "MediaAutoUploadSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPLOAD_FREQUENCY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    invoke-direct {p0, v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->convertFrequencyIntegerToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I

    if-ltz v2, :cond_0

    .line 668
    const-string v2, "SERVICE"

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v2, "SERVICE_TITLE"

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v2, "SERVICE_LABEL"

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v2, "SERVICE_COMPONENT"

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    const-string v2, "service_account_type"

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    :cond_0
    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Album;

    .line 686
    .local v0, album:Lcom/htc/opensense/social/data/Album;
    const-string v2, "ALBUM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 687
    const-string v2, "ALBUM_NAME"

    iget-object v3, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    .end local v0           #album:Lcom/htc/opensense/social/data/Album;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->setResult(ILandroid/content/Intent;)V

    .line 696
    const-string v2, "MediaAutoUploadSetting"

    const-string v3, "setResultForOutgoingIntent---"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method private showBusyCursor()V
    .locals 2

    .prologue
    .line 1073
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 1074
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1076
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1077
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1078
    return-void
.end method

.method private updatePrivacySetting(I)V
    .locals 7
    .parameter "oldIndex"

    .prologue
    const/4 v6, 0x0

    .line 835
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 860
    :goto_0
    return-void

    .line 840
    :cond_0
    const/4 v0, 0x0

    .line 841
    .local v0, bFound:Z
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mReadablePrivacyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Privacy;

    .line 847
    .local v2, privacy:Lcom/htc/opensense/social/data/Privacy;
    iget-object v4, v2, Lcom/htc/opensense/social/data/Privacy;->serverString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Album;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 849
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;

    iget-object v4, v2, Lcom/htc/opensense/social/data/Privacy;->humanString:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mTitle:Ljava/lang/String;

    .line 850
    const/4 v0, 0x1

    .line 854
    .end local v2           #privacy:Lcom/htc/opensense/social/data/Privacy;
    :cond_2
    if-nez v0, :cond_3

    .line 856
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mTitle:Ljava/lang/String;

    .line 859
    :cond_3
    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAdapter:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;

    invoke-virtual {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 312
    const-string v1, "MediaAutoUploadSetting"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "MediaAutoUploadSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "MediaAutoUploadSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 317
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    const-string v2, "SELECTED_HOUR"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 321
    const/16 v1, 0xc

    const-string v2, "SELECTED_MIN"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 322
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    .line 324
    const-string v1, "MediaAutoUploadSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTimePick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencies:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-wide v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mTimePick:J

    invoke-direct {p0, v2, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 334
    .end local v0           #c:Ljava/util/Calendar;
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->showBusyCursor()V

    .line 332
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->queryAlbumByService(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->setContentView(I)V

    .line 257
    sput-object p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mInstance:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    .line 260
    const-string v3, "common_app_bkg"

    const v4, 0x20806b7

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, bkgId:I
    if-lez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 268
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "AUTO_UPLOAD"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z

    .line 270
    const-string v3, "UPLOAD_FREQUENCY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->convertFrequencyStringToInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I

    .line 271
    const-string v3, "SERVICE_LABEL"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, service:Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, "Facebook"

    .end local v2           #service:Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;

    .line 273
    const-string v3, "ALBUM_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumDefault:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initUI()V

    .line 279
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "MediaAutoUploadSetting"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mInstance:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 307
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    iget-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mFirstLoginSuccess:Z

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "MediaAutoUploadSetting"

    const-string v1, "onResume and login success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->showBusyCursor()V

    .line 291
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->queryAlbumByService(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mFirstLoginSuccess:Z

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v0, "MediaAutoUploadSetting"

    const-string v1, "onResume and login fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
