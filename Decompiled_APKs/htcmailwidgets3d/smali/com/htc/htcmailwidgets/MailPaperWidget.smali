.class public Lcom/htc/htcmailwidgets/MailPaperWidget;
.super Lcom/htc/htcmailwidgets/MailWidgetBase;
.source "MailPaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;,
        Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final sDMSG_BASE:I = 0x1e61

.field public static final sDMSG_DELETE_MAIL_DB:I = 0x1e62

.field public static final sEMSG_BASE:I = 0x22b8

.field public static final sEMSG_EXTRACT_DATA:I = 0x22b9

.field private static final sMSG_BASE:I = 0x15b3

.field private static final sMSG_CANCEL_NOTIFY:I = 0x15bc

.field private static final sMSG_GET_INITIAL_DATA:I = 0x15b5

.field private static final sMSG_GET_MAIL_BODY_LINES:I = 0x15bb

.field private static final sMSG_LAUNCH_MAIL_DETAIL:I = 0x15c0

.field private static final sMSG_LAUNCH_PROVIDER_SCREEN:I = 0x15ba

.field private static final sMSG_NOTIFY_ADAPTER:I = 0x15be

.field private static final sMSG_QUERY_UNREAD_MAIL:I = 0x15b9

.field private static final sMSG_RECOVERY_DELETE_BLOCKING:I = 0x15bf

.field private static final sMSG_REMOVE_MAIL:I = 0x15bd

.field private static final sMSG_RESUME_DELAYED:I = 0x15b4

.field private static final sMSG_SECOND_ROUND_QUERY:I = 0x15b8

.field private static final sMSG_START_QUERY_FLAG:I = 0x15b6

.field private static final sUIMSG_BASE:I = 0x1a0a

.field private static final sUIMSG_HIDE_EMPTYPAGE:I = 0x1a10

.field private static final sUIMSG_REMOVE_DIALOG:I = 0x1a11

.field private static final sUIMSG_UPDATE_ACTION_BAR:I = 0x1a0f

.field private static final sUIMSG_UPDATE_TITLE:I = 0x1a0e

.field private static final sUIMSG_WIDGET_HIDE_PROGRESS:I = 0x1a0c

.field private static final sUIMSG_WIDGET_SHOW_PROGRESS:I = 0x1a0b

.field private static final sUIMSG_WIDGET_STOP_PROGRESS:I = 0x1a0d


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private isUnread:Z

.field private mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mDelMailId:I

.field private mDeleteConfirmation:Z

.field private mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

.field private mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

.field private mDeletedMailCount:I

.field private mDeletedUnreadMailCount:I

.field private mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

.field private mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mLastDeleteMailId:I

.field private mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

.field private mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

.field private mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mUnreadCounts:I

.field private mWelcome:Lcom/htc/htcmailwidgets/MailData;

.field private mWelcomeAccount:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWelcomeBody:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWelcomeDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWelcomeFrom:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWelcomePhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mWelcomeSubject:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWidgetHwnd:Landroid/view/Window;

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field private mbAutoSync:Z

.field private mbDoOrientation:Z

.field private mbDoRefreshAdapterTask:Z

.field private mbFromIntent:Z

.field private mbInitialize:Z

.field private mbItemPressed:Z

.field private mbNeedForceAutoSync:Z

.field private mbNeedToBindWithListViewAgain:Z

.field private mbNeedUpdateMailBodyMaxLines:Z

.field private mbNoScene:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/htc/htcmailwidgets/MailPaperWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;-><init>()V

    .line 54
    const-string v0, "HTCWidget_MailPaperWidget"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbItemPressed:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateMailBodyMaxLines:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAutoSync:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedForceAutoSync:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInitialize:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFromIntent:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedToBindWithListViewAgain:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteConfirmation:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLastDeleteMailId:I

    .line 112
    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeletedMailCount:I

    .line 113
    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeletedUnreadMailCount:I

    .line 115
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 116
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    .line 143
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    .line 145
    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUnreadCounts:I

    .line 146
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNoScene:Z

    .line 147
    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->m_nTiltStartFrame:I

    .line 148
    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->m_nTiltEndFrame:I

    .line 150
    new-instance v0, Lcom/htc/htcmailwidgets/MailData;

    invoke-direct {v0}, Lcom/htc/htcmailwidgets/MailData;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    .line 153
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    .line 156
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    .line 713
    new-instance v0, Lcom/htc/htcmailwidgets/MailPaperWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$2;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2184
    new-instance v0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$5;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->extractCursorTask(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/htcmailwidgets/FxMailPaperAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/htcmailwidgets/MailPaperWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->replyMail(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/htcmailwidgets/MailPaperWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchContactCard(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->isUnread:Z

    return v0
.end method

.method static synthetic access$1408(Lcom/htc/htcmailwidgets/MailPaperWidget;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeletedUnreadMailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeletedUnreadMailCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/htcmailwidgets/MailPaperWidget;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/view/Window;)Landroid/view/Window;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/htcmailwidgets/MailPaperWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/fusion/fx/controls/FxListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htcmailwidgets/MailPaperWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/htcmailwidgets/MailPaperWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/htcmailwidgets/MailPaperWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/htcmailwidgets/MailPaperWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLastDeleteMailId:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteConfirmation:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/fusion/fx/FxTimelineControl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->deleteMailfromDB(Lcom/htc/fusion/fx/FxTimelineControl;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/htcmailwidgets/MailPaperWidget;ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->createDeleteDlg(ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxButton;)V

    return-void
.end method

.method private bindView(Lcom/htc/htcmailwidgets/MailData;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "maildata"
    .parameter "bmp"

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeFrom:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v0, p1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeAccount:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/htcmailwidgets/MailData;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeSubject:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeBody:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1093
    if-nez p2, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208002a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomePhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1098
    return-void

    .line 1087
    :cond_1
    iget-object v0, p1, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method private createDeleteDlg(ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxButton;)V
    .locals 8
    .parameter "position"
    .parameter "timeline"
    .parameter "button"

    .prologue
    .line 2365
    move v2, p1

    .line 2366
    .local v2, index:I
    move-object v5, p2

    .line 2367
    .local v5, t:Lcom/htc/fusion/fx/FxTimelineControl;
    move-object v6, p3

    .line 2371
    .local v6, b:Lcom/htc/fusion/fx/controls/FxButton;
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsICS:Z

    if-eqz v0, :cond_0

    .line 2372
    sget-object v3, Lcom/htc/htcmailwidgets/LocalData;->mButtonCancel:Ljava/lang/String;

    .line 2373
    .local v3, stringLeft:Ljava/lang/String;
    sget-object v4, Lcom/htc/htcmailwidgets/LocalData;->mButtonOk:Ljava/lang/String;

    .line 2379
    .local v4, stringRight:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    new-instance v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailPaperWidget$6;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;ILjava/lang/String;Ljava/lang/String;Lcom/htc/fusion/fx/FxTimelineControl;)V

    invoke-interface {v7, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 2466
    return-void

    .line 2375
    .end local v3           #stringLeft:Ljava/lang/String;
    .end local v4           #stringRight:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/htc/htcmailwidgets/LocalData;->mButtonCancel:Ljava/lang/String;

    .line 2376
    .restart local v4       #stringRight:Ljava/lang/String;
    sget-object v3, Lcom/htc/htcmailwidgets/LocalData;->mButtonOk:Ljava/lang/String;

    .restart local v3       #stringLeft:Ljava/lang/String;
    goto :goto_0
.end method

.method private deleteMailfromDB(Lcom/htc/fusion/fx/FxTimelineControl;II)V
    .locals 7
    .parameter "timeline"
    .parameter "index"
    .parameter "mail_id"

    .prologue
    .line 2470
    const/4 v0, 0x0

    .line 2471
    .local v0, bFailed:Z
    const/4 v2, 0x0

    .line 2472
    .local v2, rtn:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/deleteMessage/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2477
    .local v3, uri_:Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v4, :cond_0

    .line 2478
    const/4 v4, 0x0

    int-to-long v5, p3

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result p2

    .line 2479
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v4}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 2480
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v4, p2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v4

    iget v4, v4, Lcom/htc/htcmailwidgets/MailData;->mId:I

    if-ne v4, p3, :cond_0

    .line 2481
    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v4, v5, v6, p2}, Lcom/htc/htcmailwidgets/MailDataManager;->deleteMail(JLjava/lang/String;I)V

    .line 2482
    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    .line 2484
    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    if-gez v4, :cond_0

    .line 2485
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    .line 2490
    :cond_0
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    if-eqz v4, :cond_1

    .line 2491
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    const/16 v6, 0x1e62

    invoke-virtual {v5, v6, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2502
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2503
    const-string v4, "page_delete"

    invoke-virtual {p1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2504
    :cond_2
    return-void

    .line 2495
    :catch_0
    move-exception v1

    .line 2497
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 2499
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private extractCursorTask(Landroid/database/Cursor;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1433
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    .line 1435
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFromIntent:Z

    if-nez v0, :cond_6

    .line 1437
    iput v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailUpdateIndex:I

    .line 1463
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQuery:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQuery:Z

    if-eqz v0, :cond_2

    .line 1467
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoFirstRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1468
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQuery:Z

    .line 1469
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQueryCompleted:Z

    .line 1472
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1474
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    .line 1475
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQueryCompleted:Z

    .line 1476
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    .line 1481
    :cond_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSecondRoundQuery:Z

    if-eqz v0, :cond_b

    .line 1482
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1483
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSecondRoundQuery:Z

    .line 1485
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1486
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1487
    const/4 p1, 0x0

    .line 1530
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_5

    .line 1531
    invoke-virtual {p0, v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopEascSync(Z)V

    .line 1532
    :cond_5
    :goto_2
    return-void

    .line 1438
    :cond_6
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAll:Z

    if-nez v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMailIDs size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1443
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1444
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1445
    const/4 p1, 0x0

    .line 1448
    :cond_8
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 1450
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    if-eqz v0, :cond_9

    .line 1451
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    .line 1452
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    .line 1455
    :cond_9
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_5

    .line 1456
    invoke-virtual {p0, v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopEascSync(Z)V

    goto :goto_2

    .line 1460
    :cond_a
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedMailChange:Z

    goto/16 :goto_0

    .line 1490
    :cond_b
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAll:Z

    if-eqz v0, :cond_e

    .line 1491
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->isLastItemBoth(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasDeletedMail:Z

    if-nez v0, :cond_d

    .line 1493
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoRequeryAllExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1494
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAll:Z

    .line 1495
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAllCompleted:Z

    .line 1496
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQueryCompleted:Z

    .line 1497
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    .line 1498
    iput v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mProcessIndex:I

    .line 1515
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_f

    .line 1516
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 1501
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1502
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    .line 1503
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQueryCompleted:Z

    .line 1504
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    .line 1505
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasDeletedMail:Z

    goto :goto_3

    .line 1508
    :cond_e
    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1509
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1510
    const/4 p1, 0x0

    goto :goto_3

    .line 1517
    :cond_f
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAllCompleted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_4

    :cond_10
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAutoSync:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_4

    .line 1519
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 1520
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1521
    :cond_11
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    .line 1522
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 1523
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1524
    :cond_12
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    .line 1525
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1
.end method

.method private getFxObjects()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 606
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 607
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 609
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 611
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeFrom:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 613
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeFrom:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 615
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeAccount:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 617
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeAccount:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 618
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeSubject:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 619
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeSubject:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 620
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeBody:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 621
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeBody:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 622
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomePhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 623
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomePhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 624
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 625
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 626
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 627
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 628
    :cond_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 629
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 630
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 631
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 632
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 633
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 634
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 635
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 636
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 637
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 639
    :cond_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v0, v1, :cond_12

    :cond_10
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    if-ne v0, v2, :cond_12

    .line 641
    :cond_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 642
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 644
    :cond_12
    return-void
.end method

.method private hideLoadMessage()V
    .locals 2

    .prologue
    .line 2178
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-eqz v0, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2180
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 648
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 650
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 651
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNoScene:Z

    .line 711
    :goto_0
    return-void

    .line 654
    :cond_0
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNoScene:Z

    .line 656
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 658
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    if-ne v1, v6, :cond_5

    .line 659
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    invoke-virtual {v1}, [Lcom/htc/fusion/fx/FxObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 660
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getFxObjects()V

    .line 666
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0e

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 672
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 674
    sget v0, Lcom/htc/htcmailwidgets/LocalData;->mUpdateUIbyItems:I

    .line 675
    .local v0, val:I
    if-lez v0, :cond_3

    .line 676
    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->MAILLIST_UPDATE_ITEMS:I

    .line 680
    :cond_3
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    if-ne v1, v6, :cond_6

    .line 681
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    sget-object v4, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/Components;->getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 686
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->initTilt()V

    .line 688
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedToBindWithListViewAgain:Z

    .line 690
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 691
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 695
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 696
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 697
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyPageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->initReceiver()V

    .line 710
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->setMailCallbackListener(Lcom/htc/htcmailwidgets/IMailCallbackListener;I)V

    goto/16 :goto_0

    .line 661
    .end local v0           #val:I
    :cond_5
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    if-ne v1, v7, :cond_1

    .line 662
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    invoke-virtual {v1}, [Lcom/htc/fusion/fx/FxObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 663
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getFxObjects()V

    goto/16 :goto_1

    .line 682
    .restart local v0       #val:I
    :cond_6
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    if-ne v1, v7, :cond_4

    .line 683
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    sget-object v4, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/Components;->getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private launchContactCard(I)V
    .locals 6
    .parameter "idx"

    .prologue
    .line 2307
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v2

    iget v0, v2, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 2313
    .local v0, contactId:I
    if-ltz v0, :cond_0

    .line 2314
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2315
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2316
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2317
    const/high16 v2, 0x5080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2319
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2322
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_0

    .line 2323
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2325
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private queryUnreadMail()V
    .locals 5

    .prologue
    .line 1398
    const/4 v0, -0x1

    .line 1400
    .local v0, unread:I
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-eqz v1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1405
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailUtils;->getAllUnreadMail(Landroid/content/Context;)I

    move-result v0

    .line 1410
    :goto_1
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUnreadCounts:I

    if-eq v1, v0, :cond_4

    if-nez v0, :cond_4

    .line 1411
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 1412
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "read_maill"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1417
    :cond_2
    :goto_2
    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUnreadCounts:I

    .line 1419
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 1420
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1407
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getUnreadMail(Landroid/content/Context;J)I

    move-result v0

    goto :goto_1

    .line 1413
    :cond_4
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUnreadCounts:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUnreadCounts:I

    if-nez v1, :cond_2

    .line 1414
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 1415
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "notice_newmail"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private releaseData()V
    .locals 2

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopEascSync(Z)V

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->releaseControl()V

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    .line 906
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1390

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 907
    return-void
.end method

.method private replyMail(I)V
    .locals 5
    .parameter "message_id"

    .prologue
    .line 2333
    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLaunchMailApp:Z

    if-eqz v2, :cond_1

    .line 2334
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReplyMail block by App already be called, mbLaunchMailApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLaunchMailApp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2338
    :cond_1
    if-ltz p1, :cond_0

    .line 2343
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2344
    .local v1, reply_intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2345
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2346
    const-string v2, "cmd"

    const-string v3, "reply"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2347
    const-string v2, "accountID"

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2350
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    .line 2353
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_2

    .line 2354
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 2356
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLaunchMailApp:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2357
    :catch_0
    move-exception v0

    .line 2360
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLaunchMailApp:Z

    goto :goto_0
.end method

.method private setTaskBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 887
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 896
    :cond_1
    :goto_0
    return-void

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showLoadMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2167
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2169
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mLoadingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2173
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 2175
    :cond_1
    return-void
.end method

.method private showPanel()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1102
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    .line 1103
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v4, 0x15b9

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1104
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 1106
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 1107
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/htc/htcmailwidgets/MailData;->mDate:J

    .line 1108
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-wide v4, v4, Lcom/htc/htcmailwidgets/MailData;->mDate:J

    invoke-virtual {p0, v4, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getDateString(J)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    .line 1109
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    .line 1110
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iput v8, v3, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 1111
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v3, v3

    if-nez v3, :cond_4

    .line 1112
    :cond_0
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->isSenseTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1113
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    .line 1126
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iput v11, v3, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 1127
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iput-boolean v7, v3, Lcom/htc/htcmailwidgets/MailData;->mReady:Z

    .line 1128
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iput-boolean v7, v3, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    .line 1129
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    invoke-direct {p0, v3, v9}, Lcom/htc/htcmailwidgets/MailPaperWidget;->bindView(Lcom/htc/htcmailwidgets/MailData;Landroid/graphics/Bitmap;)V

    .line 1130
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_2

    .line 1131
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1132
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v4, "welcome_page"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1213
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setTaskBar()V

    .line 1214
    :goto_2
    return-void

    .line 1115
    :cond_3
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    goto :goto_0

    .line 1116
    :cond_4
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v3, v3

    if-le v3, v7, :cond_6

    .line 1117
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->isSenseTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1118
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    goto :goto_0

    .line 1120
    :cond_5
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcome:Lcom/htc/htcmailwidgets/MailData;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    goto :goto_0

    .line 1121
    :cond_6
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v3, v3

    if-ne v3, v7, :cond_1

    .line 1122
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    goto :goto_2

    .line 1134
    :cond_7
    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1136
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_8

    .line 1137
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1138
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v4, "empty_page"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1141
    :cond_8
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_9

    .line 1142
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v4, Lcom/htc/htcmailwidgets/LocalData;->mAccountHasBeenDeleted:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1144
    :cond_9
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 1145
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1146
    iput-object v9, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 1147
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->initialize()V

    .line 1148
    iput-boolean v8, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    .line 1151
    :cond_a
    invoke-virtual {p0, v9}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1153
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 1155
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v3, :cond_b

    .line 1156
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-wide v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->setAccountID(J)V

    .line 1158
    :cond_b
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    .line 1159
    invoke-direct {p0, v8}, Lcom/htc/htcmailwidgets/MailPaperWidget;->updateNotificationCount(I)V

    goto/16 :goto_1

    .line 1163
    :cond_c
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    .line 1165
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v4, 0x15b9

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1167
    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    if-lez v3, :cond_f

    .line 1169
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_d

    .line 1170
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1171
    :cond_d
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_e

    .line 1172
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1173
    :cond_e
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    if-lez v3, :cond_2

    .line 1174
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4, v5, v8}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 1175
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1179
    :cond_f
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_10

    .line 1180
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1181
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v4, "empty_page"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1184
    :cond_10
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_11

    .line 1185
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1188
    :cond_11
    const/4 v0, 0x0

    .line 1189
    .local v0, acc_name:Ljava/lang/String;
    sget v1, Lcom/htc/htcmailwidgets/LocalData;->mAccountNameLength:I

    .line 1190
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_17

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    :goto_3
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_12

    .line 1195
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1197
    :cond_12
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_13

    .line 1198
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v4, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1199
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1202
    :cond_13
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_14

    .line 1203
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1204
    :cond_14
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_15

    .line 1205
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v8}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1206
    :cond_15
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v3, :cond_16

    .line 1207
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v5, 0x1a0f

    invoke-virtual {v4, v5, v11, v8}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1209
    :cond_16
    iput v8, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    .line 1210
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z

    goto/16 :goto_1

    .line 1193
    :cond_17
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    goto :goto_3
.end method

.method private stopLoadMessages()V
    .locals 2

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2164
    :cond_0
    return-void
.end method

.method private updateMailBodyMaxLines(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->updateMaxLines(I)V

    .line 1428
    :cond_0
    return-void
.end method

.method private updateNotificationCount(I)V
    .locals 5
    .parameter "notify_count"

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1344
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-eqz v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setTaskBar()V

    .line 1348
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v0, v1, :cond_6

    :cond_2
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    .line 1349
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1350
    if-lez p1, :cond_5

    .line 1352
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1353
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 1354
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1357
    :cond_3
    if-gt p1, v4, :cond_4

    .line 1358
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1363
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 1370
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1371
    if-lez p1, :cond_9

    .line 1372
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_7

    .line 1373
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1374
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1376
    :cond_7
    if-gt p1, v4, :cond_8

    .line 1377
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1379
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1381
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1383
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1386
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1387
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1388
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private updateTitle(Z)V
    .locals 5
    .parameter "isdefault"

    .prologue
    .line 910
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_0

    .line 928
    :goto_0
    return-void

    .line 913
    :cond_0
    if-eqz p1, :cond_2

    .line 914
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v3, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 927
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v3, 0x15b9

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 916
    :cond_2
    const/4 v0, 0x0

    .line 917
    .local v0, acc_name:Ljava/lang/String;
    sget v1, Lcom/htc/htcmailwidgets/LocalData;->mAccountNameLength:I

    .line 918
    .local v1, length:I
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    :goto_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_1

    .line 924
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 921
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public checkAccount()V
    .locals 18

    .prologue
    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 933
    .local v16, start_time:J
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSwitchAccount:Z

    .line 934
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    .line 935
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 936
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshFlag:Z

    .line 937
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 938
    .local v7, acc_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v1, :cond_3

    const/4 v10, 0x0

    .line 940
    .local v10, count:I
    :goto_0
    if-nez v10, :cond_5

    .line 941
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_4

    .line 944
    const-wide/16 v7, -0x2

    .line 946
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties(J)V

    .line 1015
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 1017
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    .line 1018
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->checkDelConfirm()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteConfirmation:Z

    .line 1024
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHaveAccountName:Z

    .line 1027
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWhere()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    .line 1036
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_1

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0b

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1078
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1081
    .local v14, end_time:J
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInitialize:Z

    .line 1082
    .end local v14           #end_time:J
    :cond_2
    :goto_4
    return-void

    .line 939
    .end local v10           #count:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v10, v1

    goto :goto_0

    .line 947
    .restart local v10       #count:I
    :cond_4
    const-wide/16 v1, -0x3

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    .line 948
    const-wide/16 v7, -0x2

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    goto :goto_1

    .line 949
    :cond_5
    if-lez v10, :cond_0

    .line 950
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-ne v10, v1, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v11, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 953
    .local v11, da_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties()V

    .line 955
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_6

    .line 956
    move-wide v7, v11

    goto/16 :goto_1

    .line 958
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getDefaultAccount(): DEFAULT_NO_ACCOUNT: acc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", da_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 960
    .end local v11           #da_id:J
    :cond_7
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    if-gt v10, v1, :cond_0

    .line 962
    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_d

    .line 964
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v7, v1

    if-nez v1, :cond_9

    .line 965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 968
    :cond_9
    const/4 v9, 0x0

    .line 970
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 971
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 974
    :cond_a
    const-wide/16 v7, -0x2

    .line 976
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties(J)V

    .line 984
    :cond_b
    :goto_5
    if-eqz v9, :cond_0

    .line 985
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 986
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 980
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_b

    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 988
    :catch_0
    move-exception v13

    .line 989
    .local v13, e:Ljava/lang/Exception;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 990
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 996
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_d
    const-wide/16 v1, -0x2

    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    .line 999
    const-wide/16 v1, -0x3

    cmp-long v1, v7, v1

    if-nez v1, :cond_f

    .line 1001
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 1002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v11, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 1003
    .restart local v11       #da_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties()V

    .line 1005
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_e

    .line 1006
    move-wide v7, v11

    .line 1007
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccount: Deleted Account Acquire New Account: acc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1009
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getDefaultAccount(): DELETED_ACCOUNT_ACQUIRE: acc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", da_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1012
    .end local v11           #da_id:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: checkAccount -- mAccountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1030
    :cond_10
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountDefaultFolderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    goto/16 :goto_2

    .line 1042
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHaveAccountName:Z

    .line 1045
    const/4 v1, 0x1

    if-le v10, v1, :cond_13

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchAccountOption()V

    .line 1075
    :cond_12
    :goto_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    goto/16 :goto_3

    .line 1047
    :cond_13
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    if-nez v10, :cond_15

    .line 1049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_14

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1771

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1053
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15ba

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_6

    .line 1054
    :cond_15
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    const/4 v1, 0x1

    if-ne v10, v1, :cond_12

    .line 1055
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInRefresh:Z

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties()V

    .line 1058
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 1059
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbExtractMailBodyTerminated:Z

    .line 1060
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInRefresh:Z

    if-nez v1, :cond_16

    .line 1061
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHaveAccountName:Z

    .line 1063
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountDefaultFolderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x138d

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x138d

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1068
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_2

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0b

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a0e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4
.end method

.method public getMailDataIndex(Ljava/util/List;J)I
    .locals 6
    .parameter
    .parameter "mail_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 2531
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    const/4 v2, 0x0

    .line 2532
    .local v2, index:I
    const/4 v0, 0x0

    .line 2533
    .local v0, bFind:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcmailwidgets/MailData;

    .line 2534
    .local v3, m:Lcom/htc/htcmailwidgets/MailData;
    iget v4, v3, Lcom/htc/htcmailwidgets/MailData;->mId:I

    long-to-int v5, p2

    if-ne v4, v5, :cond_2

    .line 2535
    const/4 v0, 0x1

    .line 2541
    .end local v3           #m:Lcom/htc/htcmailwidgets/MailData;
    :cond_0
    if-nez v0, :cond_1

    .line 2542
    const/4 v2, -0x1

    .line 2544
    .end local v2           #index:I
    :cond_1
    return v2

    .line 2538
    .restart local v2       #index:I
    .restart local v3       #m:Lcom/htc/htcmailwidgets/MailData;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMailIDIndex(Ljava/util/ArrayList;J)I
    .locals 8
    .parameter
    .parameter "mail_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 2508
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, -0x1

    .line 2509
    .local v4, index:I
    if-eqz p1, :cond_3

    .line 2510
    const/4 v4, 0x0

    .line 2512
    const/4 v0, 0x0

    .line 2513
    .local v0, bFind:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2514
    .local v2, id:J
    cmp-long v5, p2, v2

    if-nez v5, :cond_1

    .line 2515
    const/4 v0, 0x1

    .line 2521
    .end local v2           #id:J
    :cond_0
    if-nez v0, :cond_2

    .line 2522
    const/4 v5, -0x1

    .line 2527
    .end local v0           #bFind:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return v5

    .line 2518
    .restart local v0       #bFind:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #id:J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2           #id:J
    :cond_2
    move v5, v4

    .line 2524
    goto :goto_1

    .line 2526
    .end local v0           #bFind:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v5, v6, v7, p2, p3}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIndex(JLjava/lang/String;J)I

    move-result v4

    move v5, v4

    .line 2527
    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1535
    move-object v11, p1

    .line 1537
    .local v11, message:Landroid/os/Message;
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-nez v0, :cond_0

    .line 1538
    new-instance v0, Lcom/htc/htcmailwidgets/StopEASCSync;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/htcmailwidgets/StopEASCSync;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 1540
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2058
    :cond_1
    :goto_0
    return-void

    .line 1542
    :sswitch_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_ON_STOP_EASC_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/StopEASCSync;->forceStop()V

    goto :goto_0

    .line 1548
    :sswitch_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_ON_RESUME_EASC_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-eqz v0, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/StopEASCSync;->forceResume()V

    goto :goto_0

    .line 1554
    :sswitch_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_2

    .line 1557
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopEascSync(Z)V

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1560
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1561
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1562
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1563
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138f

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1564
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1565
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1568
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1569
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1570
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1571
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0c

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1572
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1573
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0e

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1574
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0f

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1576
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 1580
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    .line 1582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    .line 1583
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_a

    .line 1584
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onDuringDeleteMail(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    goto/16 :goto_0

    .line 1585
    :catch_0
    move-exception v6

    .line 1587
    .local v6, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    goto/16 :goto_0

    .line 1598
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInitialize:Z

    if-nez v0, :cond_f

    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInitialize:Z

    .line 1604
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1605
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_c

    .line 1606
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1607
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1608
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1612
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1613
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1615
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_d

    .line 1616
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1633
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1635
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 1638
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1639
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1641
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bc

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1644
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedGetAutoSyncStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1646
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1617
    :cond_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedReloadAccountInfo:Z

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1619
    :cond_10
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1393

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1620
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1393

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_1

    .line 1622
    :cond_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1623
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 1630
    :cond_12
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateDataToUI:Z

    goto/16 :goto_1

    .line 1625
    :cond_13
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    goto :goto_2

    .line 1652
    :sswitch_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RESUME_DELAYED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedReloadAccountInfo:Z

    if-eqz v0, :cond_14

    .line 1656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    .line 1657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 1658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbTimeChanged:Z

    .line 1659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshDateTime:Z

    .line 1660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateContactStatus:Z

    .line 1661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    .line 1662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQueryCompleted:Z

    .line 1663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    .line 1664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAllCompleted:Z

    .line 1665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedExtractMailCursor:Z

    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFromIntent:Z

    .line 1667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasNewMailComingNotify:Z

    .line 1669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateDataToUI:Z

    .line 1670
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1671
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1676
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    .line 1678
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    if-eqz v0, :cond_1a

    .line 1679
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1680
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1704
    :cond_15
    :goto_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateDataToUI:Z

    if-eqz v0, :cond_16

    .line 1705
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_16

    .line 1706
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateDataToUI:Z

    .line 1711
    :cond_16
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 1712
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_17

    .line 1713
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "welcome_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1716
    :cond_17
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    if-eqz v0, :cond_18

    .line 1717
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1718
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    .line 1723
    :cond_18
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateMailBodyMaxLines:Z

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_19

    .line 1725
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1726
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateMailBodyMaxLines:Z

    goto/16 :goto_0

    .line 1681
    :cond_1a
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSecondRoundQuery:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasNewMailComingNotify:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1c

    :cond_1b
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1683
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1685
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSecondRoundQuery:Z

    .line 1688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_3

    .line 1692
    :cond_1c
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_1d

    .line 1693
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1694
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_3

    .line 1697
    :cond_1d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_15

    .line 1698
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1699
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1700
    :cond_1e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 1733
    :sswitch_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_CHECK_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->checkAccount()V

    goto/16 :goto_0

    .line 1740
    :sswitch_6
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-nez v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_QUERY_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailUpdateIndex:I

    .line 1745
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshFlag:Z

    .line 1748
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedExtractMailCursor:Z

    if-nez v0, :cond_1f

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mProcessIndex:I

    .line 1753
    :cond_1f
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    if-eqz v0, :cond_20

    .line 1754
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->startMissedMessageQuery()V

    goto/16 :goto_0

    .line 1756
    :cond_20
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->startMissedMessageQuery2()V

    goto/16 :goto_0

    .line 1762
    :sswitch_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_QUERY_FLAG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshFlag:Z

    .line 1764
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountProtocol:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 1769
    :sswitch_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_INITIAL_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1772
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/htcmailwidgets/MailPaperWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$3;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1778
    .local v13, thread:Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1783
    .end local v13           #thread:Ljava/lang/Thread;
    :sswitch_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sMSG_SECOND_ROUND_QUERY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/htcmailwidgets/MailPaperWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$4;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1791
    .restart local v13       #thread:Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1796
    .end local v13           #thread:Ljava/lang/Thread;
    :sswitch_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_QUERY_UNREAD_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-nez v0, :cond_22

    .line 1798
    :cond_21
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->queryUnreadMail()V

    goto/16 :goto_0

    .line 1800
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_0

    .line 1804
    :sswitch_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1806
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v0, :cond_1

    .line 1807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    goto/16 :goto_0

    .line 1813
    :sswitch_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_LAUNCH_PROVIDER_SCREEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchProviderListScreen()V

    goto/16 :goto_0

    .line 1817
    :sswitch_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_MAIL_BODY_LINES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->queryMailBodyMaxLines()V

    goto/16 :goto_0

    .line 1821
    :sswitch_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_SYNC_MAIL_SETTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bb

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1823
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bb

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->checkDelConfirm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteConfirmation:Z

    goto/16 :goto_0

    .line 1828
    :sswitch_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RELOAD_ACCOUNT_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedReloadAccountInfo:Z

    .line 1831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAccountAssigned:Z

    .line 1832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    .line 1833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInRefresh:Z

    .line 1835
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_23

    .line 1836
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 1839
    :cond_23
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v0, :cond_25

    .line 1840
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 1841
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties(J)V

    .line 1842
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_24

    .line 1843
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1844
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1846
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1847
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15ba

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1849
    :cond_25
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    .line 1850
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailUtils;->isAccountDelete([Lcom/htc/htcmailwidgets/MailUtils$Account;J)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 1851
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 1852
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties(J)V

    .line 1853
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_26

    .line 1854
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1855
    :cond_26
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchAccountOption()V

    .line 1856
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    goto/16 :goto_0

    .line 1858
    :cond_27
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_29

    .line 1860
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getAccountName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    .line 1861
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties()V

    .line 1862
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_28

    .line 1863
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0e

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1865
    :cond_28
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1866
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1868
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_1

    .line 1869
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->clear()V

    goto/16 :goto_0

    .line 1872
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    goto/16 :goto_0

    .line 1874
    :cond_2a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1875
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 1876
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties()V

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 1878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbExtractMailBodyTerminated:Z

    .line 1879
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInRefresh:Z

    if-nez v0, :cond_2b

    .line 1880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHaveAccountName:Z

    .line 1882
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountDefaultFolderId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    .line 1884
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1885
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1887
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_2b

    .line 1888
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->clear()V

    .line 1891
    :cond_2b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_2c

    .line 1892
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1894
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0e

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1897
    :cond_2c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_1

    .line 1898
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->setAccountID(J)V

    goto/16 :goto_0

    .line 1905
    :sswitch_10
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMSG_CANCEL_NOTIFY>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    .line 1907
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1908
    .local v7, i:Landroid/content/Intent;
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1909
    const-string v0, "com.htc.android.mail.intent.action.ACTION_CANCEL_NOTIFIY"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    const-string v0, "AccountId"

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1912
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1918
    .end local v7           #i:Landroid/content/Intent;
    :sswitch_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_AUTOSYNC_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_2d

    .line 1920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedGetAutoSyncStatus:Z

    .line 1921
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isAutoSync(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAutoSync:Z

    goto/16 :goto_0

    .line 1923
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedGetAutoSyncStatus:Z

    goto/16 :goto_0

    .line 1927
    :sswitch_12
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_AUTO_SYNC_REMAINING_TIME_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_2e

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedForceAutoSync:Z

    .line 1930
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->syncMail()V

    goto/16 :goto_0

    .line 1932
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedForceAutoSync:Z

    goto/16 :goto_0

    .line 1936
    :sswitch_13
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->releaseControl()V

    .line 1938
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->initLayout()V

    .line 1940
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2f

    .line 1941
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onResetOrientation(I)V

    .line 1943
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    .line 1944
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUnreadCounts:I

    .line 1946
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1389

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1953
    :sswitch_14
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RECOVERY_DELETE_BLOCKING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    .line 1955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    .line 1957
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_30

    .line 1958
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onDuringDeleteMail(Z)V

    .line 1960
    :cond_30
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1962
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1967
    :sswitch_15
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_NOTIFY_ADAPTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :try_start_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_1

    .line 1971
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->notifyDataSetChanged()V

    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLastDeleteMailId:I

    .line 1974
    iget v0, v11, Landroid/os/Message;->arg2:I

    if-ltz v0, :cond_34

    .line 1975
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, v11, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 1979
    :cond_31
    :goto_4
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_32

    iget v0, v11, Landroid/os/Message;->arg2:I

    if-ltz v0, :cond_1

    .line 1982
    :cond_32
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bf

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1983
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bf

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1984
    :cond_33
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bf

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1986
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1976
    :cond_34
    iget v0, v11, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_35

    iget v0, v11, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_31

    .line 1977
    :cond_35
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1992
    :sswitch_16
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_REMOVE_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    iget v1, v11, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v12

    .line 1996
    .local v12, pos:I
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current index of list view :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target item to delete, pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_3a

    if-ltz v12, :cond_3a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v0

    if-ne v0, v12, :cond_3a

    .line 1999
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v0

    if-le v0, v12, :cond_36

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v0

    if-ltz v0, :cond_36

    .line 2000
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0, v12}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->remove(I)V

    .line 2003
    :cond_36
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_37

    .line 2004
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2006
    :cond_37
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getTotalMailCounts()I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTotalCounts:I

    .line 2007
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTotalCounts:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTotalCounts:I

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->setTotalMailCounts(I)V

    .line 2009
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2010
    .local v9, m:Landroid/os/Message;
    const/16 v0, 0x15be

    iput v0, v9, Landroid/os/Message;->what:I

    .line 2011
    iput v12, v9, Landroid/os/Message;->arg1:I

    .line 2012
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v1, 0x64

    invoke-interface {v0, v9, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 2015
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v12

    .line 2017
    if-nez v12, :cond_39

    .line 2018
    iput v12, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    .line 2019
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_38

    .line 2020
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 2021
    :cond_38
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    .line 2022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z

    .line 2041
    :cond_39
    :goto_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 2026
    .end local v9           #m:Landroid/os/Message;
    :cond_3a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v1

    if-le v0, v1, :cond_3b

    .line 2027
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->remove(I)V

    .line 2030
    :cond_3b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v1

    if-le v0, v1, :cond_3c

    .line 2031
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2034
    :cond_3c
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 2035
    .restart local v9       #m:Landroid/os/Message;
    const/16 v0, 0x15be

    iput v0, v9, Landroid/os/Message;->what:I

    .line 2036
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v0

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 2037
    const/4 v0, -0x1

    iput v0, v9, Landroid/os/Message;->arg2:I

    .line 2038
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v1, 0x64

    invoke-interface {v0, v9, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    goto :goto_5

    .line 2046
    .end local v9           #m:Landroid/os/Message;
    .end local v12           #pos:I
    :sswitch_17
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_LAUNCH_MAIL_DETAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget v8, v11, Landroid/os/Message;->arg1:I

    .line 2049
    .local v8, index:I
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2050
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Launched message and prepare to launch mail detail, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0, v8}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v10

    .line 2052
    .local v10, mail:Lcom/htc/htcmailwidgets/MailData;
    iget v1, v10, Lcom/htc/htcmailwidgets/MailData;->mId:I

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountProtocol:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3d

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchDetail(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_6

    .line 1540
    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_13
        0x138b -> :sswitch_f
        0x138c -> :sswitch_e
        0x138d -> :sswitch_6
        0x138e -> :sswitch_5
        0x138f -> :sswitch_0
        0x1390 -> :sswitch_1
        0x1391 -> :sswitch_12
        0x1392 -> :sswitch_11
        0x1393 -> :sswitch_b
        0x15b4 -> :sswitch_4
        0x15b5 -> :sswitch_8
        0x15b6 -> :sswitch_7
        0x15b8 -> :sswitch_9
        0x15b9 -> :sswitch_a
        0x15ba -> :sswitch_c
        0x15bb -> :sswitch_d
        0x15bc -> :sswitch_10
        0x15bd -> :sswitch_16
        0x15be -> :sswitch_15
        0x15bf -> :sswitch_14
        0x15c0 -> :sswitch_17
    .end sparse-switch
.end method

.method public handleUIMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2061
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2064
    :sswitch_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleUiMessage: sUIMSG_UPDATE_MAILDATA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbItemPressed:Z

    if-nez v1, :cond_2

    .line 2066
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    if-nez v1, :cond_1

    .line 2067
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 2070
    :goto_1
    iput-boolean v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 2069
    :cond_1
    iput-boolean v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    goto :goto_1

    .line 2072
    :cond_2
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 2077
    :sswitch_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleUiMessage: sUIMSG_WIDGET_SHOW_PANEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v1, :cond_0

    .line 2079
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->showPanel()V

    goto :goto_0

    .line 2082
    :sswitch_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_3

    .line 2083
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2084
    :cond_3
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->showLoadMessages()V

    goto :goto_0

    .line 2087
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->hideLoadMessage()V

    goto :goto_0

    .line 2091
    :sswitch_4
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_4

    .line 2092
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2093
    :cond_4
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopLoadMessages()V

    goto :goto_0

    .line 2096
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_5

    .line 2097
    invoke-direct {p0, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->updateTitle(Z)V

    goto :goto_0

    .line 2099
    :cond_5
    invoke-direct {p0, v4}, Lcom/htc/htcmailwidgets/MailPaperWidget;->updateTitle(Z)V

    goto :goto_0

    .line 2102
    :sswitch_6
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v1, :cond_6

    .line 2103
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->updateNotificationCount(I)V

    goto :goto_0

    .line 2105
    :cond_6
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRequeryUnreadMails:Z

    goto :goto_0

    .line 2110
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_7

    .line 2111
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMaxLines:I

    .line 2113
    :cond_7
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v1, :cond_8

    .line 2114
    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMaxLines:I

    invoke-direct {p0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->updateMailBodyMaxLines(I)V

    .line 2115
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1772

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2119
    :cond_8
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedUpdateMailBodyMaxLines:Z

    goto/16 :goto_0

    .line 2123
    :sswitch_8
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleMessage: sUIMSG_HIDE_EMPTYPAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 2125
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2130
    :sswitch_9
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasUnreadMail:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_9

    .line 2131
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2132
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "notice_newmail"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2135
    :cond_9
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 2139
    :sswitch_a
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 2143
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 2144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    .line 2145
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    .line 2146
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_a

    .line 2147
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->onDuringDeleteMail(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    :cond_a
    :goto_2
    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 2154
    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    goto/16 :goto_0

    .line 2148
    :catch_0
    move-exception v0

    .line 2150
    .local v0, e:Ljava/lang/Exception;
    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 2151
    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;

    goto :goto_2

    .line 2061
    nop

    :sswitch_data_0
    .sparse-switch
        0x1770 -> :sswitch_7
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_0
        0x1773 -> :sswitch_9
        0x1a0b -> :sswitch_2
        0x1a0c -> :sswitch_3
        0x1a0d -> :sswitch_4
        0x1a0e -> :sswitch_5
        0x1a0f -> :sswitch_6
        0x1a10 -> :sswitch_8
        0x1a11 -> :sswitch_a
    .end sparse-switch
.end method

.method public initTilt()V
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 491
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 492
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->m_nTiltStartFrame:I

    .line 493
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->m_nTiltEndFrame:I

    .line 496
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 506
    invoke-super {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 507
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RESULT_OK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_1

    const/16 v0, 0x2711

    if-ne p2, v0, :cond_1

    .line 509
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    .line 513
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 515
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mIntExtractDataPosition:I

    .line 520
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->resetAccountMap(JLjava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mIntExtractDataPosition:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->setExtractionDataPosition(JLjava/lang/String;I)V

    .line 527
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_6

    .line 528
    :cond_2
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 529
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 532
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    .line 601
    :cond_4
    :goto_1
    return-void

    .line 530
    :cond_5
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 531
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    goto :goto_0

    .line 536
    :cond_6
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_7

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    goto :goto_1

    .line 541
    :cond_7
    const-string v0, "ACCOUNT_ID"

    const-wide/16 v1, -0x9

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 543
    .local v6, acc:J
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_8

    .line 544
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 545
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->removeMailCallbackListener(I)V

    .line 549
    :cond_8
    iget-wide v8, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 552
    .local v8, localAccountid:J
    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    .line 553
    const-string v0, "ACCOUNT_PROTOCOL"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountProtocol:I

    .line 554
    const-string v0, "ACCOUNT_DEFAULTFOLDER"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountDefaultFolderId:I

    .line 555
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 556
    iput-wide v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    .line 559
    :cond_9
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSwitchAccount:Z

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQueryCompleted:Z

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQueryCompleted:Z

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedExtractMailCursor:Z

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFromIntent:Z

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAccountAssigned:Z

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWhere:Ljava/lang/String;

    .line 575
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    .line 577
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAccountProperties()V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshAccount:Z

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    .line 580
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 581
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 583
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 584
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 588
    :cond_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 589
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 590
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 593
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_c

    .line 594
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->clear()V

    .line 596
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    goto/16 :goto_1

    .line 600
    :cond_d
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->launchProviderListScreen()V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    const/4 v2, 0x1

    .line 458
    invoke-super {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 460
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteConfirmation:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a11

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 464
    :cond_0
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_4

    .line 465
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    .line 468
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    .line 469
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    .line 472
    :cond_1
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_3

    .line 476
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    if-ne v0, v2, :cond_5

    .line 477
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetPortrait()V

    .line 484
    :cond_3
    :goto_1
    return-void

    .line 467
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    goto :goto_0

    .line 478
    :cond_5
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 479
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetLandscape()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedState"

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v5

    const/4 v8, 0x5

    if-lt v5, v8, :cond_c

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSense30:Z

    .line 203
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v5

    const/4 v8, 0x6

    if-lt v5, v8, :cond_d

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSense35:Z

    .line 204
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "window"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 208
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v8}, Lcom/htc/htcmailwidgets/Components;->getResolution(II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    .line 213
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->isICS(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsICS:Z

    .line 216
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 218
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSceneSetting:Ljava/lang/String;

    .line 220
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSceneSetting:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWidgetInfo()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSceneSetting:Ljava/lang/String;

    .line 224
    :cond_0
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSceneSetting:Ljava/lang/String;

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/htc/htcmailwidgets/Components;->parseScene(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 226
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    if-gez v5, :cond_1

    .line 227
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v8, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v5, v8, :cond_e

    .line 228
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iput v7, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    .line 233
    :cond_1
    :goto_2
    iget v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    if-gez v5, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWidgetID()I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    .line 237
    :cond_2
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    .line 239
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-nez v5, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v9, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mOrientation:I

    invoke-static {v5, v7, v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->getInstance(Landroid/content/Context;ILcom/htc/htcmailwidgets/Components$OS_VERSION;I)Lcom/htc/htcmailwidgets/MailDataManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->preloadScene()V

    .line 245
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 247
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    if-nez v5, :cond_4

    .line 248
    new-instance v5, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    .line 251
    :cond_4
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    .line 253
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v5

    new-instance v7, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;

    invoke-direct {v7, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    invoke-interface {v5, v7}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 255
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-nez v5, :cond_5

    .line 256
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailPaperWidget("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 257
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 258
    new-instance v5, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    .line 261
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_5
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    if-nez v5, :cond_6

    .line 262
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailPaperWidget("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 263
    .restart local v4       #thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 264
    new-instance v5, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    .line 267
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_6
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    if-nez v5, :cond_7

    .line 268
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailPaperWidget("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")-ExtractCursor"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 269
    .restart local v4       #thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 270
    new-instance v5, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    .line 273
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->releaseControl()V

    .line 275
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->initLayout()V

    .line 279
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->initialize()V

    .line 283
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v5, :cond_8

    .line 285
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v7, 0x1a0d

    invoke-virtual {v5, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 288
    :cond_8
    new-instance v5, Lcom/htc/htcmailwidgets/StopEASCSync;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/htc/htcmailwidgets/StopEASCSync;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 290
    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbEnableAutoSync:Z

    if-eqz v5, :cond_9

    .line 291
    new-instance v5, Lcom/htc/htcmailwidgets/MailPaperWidget$1;

    invoke-direct {v5, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$1;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 302
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v6, v5}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 307
    :cond_9
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 308
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 312
    :cond_a
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLocalKorea:Z

    .line 316
    :cond_b
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailUtils;->getFacebookIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    .line 317
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v7, v7, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v5, v6, v7}, Lcom/htc/htcmailwidgets/Components;->getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mPhotoSizeX:I

    .line 318
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mResolution:I

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v7, v7, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v5, v6, v7}, Lcom/htc/htcmailwidgets/Components;->getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mPhotoSizeY:I

    .line 320
    return-void

    .end local v0           #WinManager:Landroid/view/WindowManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_c
    move v5, v7

    .line 202
    goto/16 :goto_0

    :cond_d
    move v5, v7

    .line 203
    goto/16 :goto_1

    .line 230
    .restart local v0       #WinManager:Landroid/view/WindowManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    :cond_e
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iput v7, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 342
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onDestroy()V

    .line 344
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->releaseData()V

    .line 346
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->removeAllMsg()V

    .line 348
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 350
    :cond_0
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 352
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 354
    :cond_1
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 355
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 357
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 359
    .local v6, looper:Landroid/os/Looper;
    if-eqz v6, :cond_2

    .line 360
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 361
    const/4 v6, 0x0

    .line 363
    :cond_2
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    .line 366
    .end local v6           #looper:Landroid/os/Looper;
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 368
    .restart local v6       #looper:Landroid/os/Looper;
    if-eqz v6, :cond_4

    .line 369
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 370
    const/4 v6, 0x0

    .line 372
    :cond_4
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteMailHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$DeleteMailHandler;

    .line 375
    .end local v6           #looper:Landroid/os/Looper;
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    if-eqz v0, :cond_7

    .line 376
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 377
    .restart local v6       #looper:Landroid/os/Looper;
    if-eqz v6, :cond_6

    .line 378
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 379
    const/4 v6, 0x0

    .line 381
    :cond_6
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    .line 384
    .end local v6           #looper:Landroid/os/Looper;
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 385
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    :cond_8
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->releaseControl()V

    .line 390
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 391
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    .line 392
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    .line 393
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 394
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeFrom:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 395
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 396
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeAccount:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 397
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeSubject:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 398
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomeBody:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 399
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWelcomePhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 400
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 401
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 403
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_a

    .line 404
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 405
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 406
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 408
    :cond_9
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 411
    :cond_a
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 413
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 415
    :cond_b
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailInfo:Ljava/util/ArrayList;

    .line 417
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 418
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    :cond_c
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 421
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_d

    .line 422
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 424
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_e

    .line 425
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 427
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyPageListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_f

    .line 428
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyPageListener:Lcom/htc/fusion/fx/MessageListener;

    .line 430
    :cond_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_10

    .line 431
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 433
    :cond_10
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 434
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 435
    :cond_11
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimer:Ljava/util/Timer;

    .line 437
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 439
    :cond_12
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTimerTast:Ljava/util/TimerTask;

    .line 442
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v0, :cond_13

    .line 443
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->clear()V

    .line 444
    :cond_13
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    .line 446
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    if-eqz v0, :cond_14

    .line 447
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailCallbackListener:Lcom/htc/htcmailwidgets/IMailCallbackListener;

    .line 449
    :cond_14
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_15

    .line 450
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 451
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->removeMailCallbackListener(I)V

    .line 453
    :cond_15
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 454
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    .line 335
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 336
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetPause()V

    .line 337
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onPause()V

    .line 338
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v7, 0x14

    const/16 v4, 0x22b9

    const/4 v3, 0x1

    const/16 v6, 0x1771

    const/4 v5, 0x0

    .line 1217
    if-nez p3, :cond_5

    .line 1218
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    .line 1219
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasNewMailComingNotify:Z

    .line 1221
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v1, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_3

    .line 1230
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1235
    :cond_3
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsESAStop:Z

    if-eqz v1, :cond_4

    .line 1236
    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopEascSync(Z)V

    .line 1340
    :cond_4
    :goto_0
    return-void

    .line 1241
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 1242
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbRefetchAllMails:Z

    .line 1243
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbHasNewMailComingNotify:Z

    .line 1245
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_6

    .line 1246
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V

    .line 1248
    :cond_6
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v1, :cond_7

    .line 1249
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1250
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1253
    :cond_7
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_9

    .line 1254
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1255
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1256
    :cond_8
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1258
    :cond_9
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1260
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsESAStop:Z

    if-eqz v1, :cond_4

    .line 1261
    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->stopEascSync(Z)V

    goto :goto_0

    .line 1266
    :cond_a
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    if-nez v1, :cond_17

    .line 1267
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v1, :cond_b

    .line 1268
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTotalCounts:I

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->setTotalMailCounts(I)V

    .line 1276
    :cond_b
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mIntExtractDataPosition:I

    if-ge v1, v2, :cond_c

    .line 1277
    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mIntExtractDataPosition:I

    .line 1278
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_c

    .line 1279
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mIntExtractDataPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->onSetExtractDataCount(I)V

    .line 1282
    :cond_c
    const/16 v1, 0xa

    if-ne p1, v1, :cond_f

    .line 1285
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "First query 10 mails back, prepare to extract data and update ui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedSecondRoundQuery:Z

    .line 1287
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbFirstRunQuery:Z

    .line 1288
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1289
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1290
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1291
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    if-eqz v1, :cond_d

    .line 1292
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1294
    :cond_d
    if-eqz p3, :cond_e

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1295
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_e
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 1298
    .end local v0           #msg:Landroid/os/Message;
    :cond_f
    if-eq p1, v7, :cond_10

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_4

    .line 1300
    :cond_10
    if-ne p1, v7, :cond_14

    .line 1302
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Second query all mails back, prepare to extract data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbSecondRunQuery:Z

    .line 1305
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1306
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1307
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1308
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    if-eqz v1, :cond_12

    .line 1309
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1332
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_4

    .line 1333
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1311
    .restart local v0       #msg:Landroid/os/Message;
    :cond_12
    if-eqz p3, :cond_13

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1312
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1313
    :cond_13
    const/4 p3, 0x0

    goto :goto_1

    .line 1315
    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_11

    .line 1317
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Requery all mails back, prepare to extract data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAll:Z

    .line 1319
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbReQueryAllCompleted:Z

    .line 1320
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1321
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1322
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1323
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    if-eqz v1, :cond_15

    .line 1324
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1326
    :cond_15
    if-eqz p3, :cond_16

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1327
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1328
    :cond_16
    const/4 p3, 0x0

    goto :goto_1

    .line 1336
    .end local v0           #msg:Landroid/os/Message;
    :cond_17
    if-eqz p3, :cond_18

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1337
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1338
    :cond_18
    const/4 p3, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    .line 325
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLaunchMailApp:Z

    .line 326
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1389

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 327
    iget v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetId:I

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->resetMailCallbackListener(I)V

    .line 328
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetResume()V

    .line 329
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onResume()V

    .line 330
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 502
    :cond_0
    return-void
.end method

.method public releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 743
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 745
    :cond_0
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 747
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 749
    :cond_1
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 751
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 753
    :cond_2
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 755
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 757
    :cond_3
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 759
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_4

    .line 760
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 761
    :cond_4
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 763
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 765
    :cond_5
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 767
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_6

    .line 768
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyPageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 769
    :cond_6
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mEmptyHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 770
    return-void
.end method

.method public setAdapter(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 774
    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-eqz v2, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    if-nez p1, :cond_5

    .line 778
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-nez v2, :cond_3

    .line 779
    :cond_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 781
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 782
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "welcome_page"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 787
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v2, :cond_0

    .line 788
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->clear()V

    .line 790
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 791
    .local v1, m:Landroid/os/Message;
    const/16 v2, 0x15be

    iput v2, v1, Landroid/os/Message;->what:I

    .line 792
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 793
    iput v7, v1, Landroid/os/Message;->arg2:I

    .line 794
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v3, 0x64

    invoke-interface {v2, v1, v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 784
    .end local v1           #m:Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "empty_page"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 800
    :cond_5
    if-eqz p1, :cond_8

    .line 801
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 802
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-nez v2, :cond_0

    .line 803
    :cond_6
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 804
    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 805
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "welcome_page"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_7
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "empty_page"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_8
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_9

    .line 814
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 817
    :cond_9
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-nez v2, :cond_10

    .line 818
    new-instance v2, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V

    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    .line 819
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTotalCounts:I

    invoke-virtual {v2, v3}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->setTotalMailCounts(I)V

    .line 821
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedToBindWithListViewAgain:Z

    if-eqz v2, :cond_f

    .line 822
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2, v3, v8}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 827
    :goto_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 828
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAddonly:Z

    .line 830
    :cond_a
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAddonly:Z

    invoke-virtual {v2, p1, v3}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->changeAdapter(Ljava/util/ArrayList;Z)V

    .line 859
    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-nez v2, :cond_e

    .line 861
    :cond_c
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 862
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 863
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mErrorTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "empty_page"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_e

    .line 866
    :cond_d
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 875
    :cond_e
    :try_start_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_0

    .line 876
    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    if-ltz v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 878
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 882
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 824
    :cond_f
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedToBindWithListViewAgain:Z

    goto :goto_2

    .line 833
    :cond_10
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbWidgetDestroy:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoOrientation:Z

    if-nez v2, :cond_b

    .line 834
    :cond_11
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mTotalCounts:I

    invoke-virtual {v2, v3}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->setTotalMailCounts(I)V

    .line 836
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_12

    .line 837
    iput v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mFirstVisibleItemPosition:I

    .line 838
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbLoacteCurrentItemPosition:Z

    .line 840
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "MailAdapter size == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_12
    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedToBindWithListViewAgain:Z

    if-eqz v2, :cond_13

    .line 844
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v2, v3, v8}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 846
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedToBindWithListViewAgain:Z

    .line 851
    :cond_13
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getCount()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 852
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAddonly:Z

    .line 854
    :cond_14
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    iget-boolean v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbAddonly:Z

    invoke-virtual {v2, p1, v3}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->changeAdapter(Ljava/util/ArrayList;Z)V

    .line 855
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z

    goto/16 :goto_3

    .line 868
    :catch_1
    move-exception v0

    .line 869
    .local v0, e:Ljava/lang/Exception;
    goto/16 :goto_0
.end method
