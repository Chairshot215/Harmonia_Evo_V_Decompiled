.class public Lcom/htc/htcmailwidgets/MailData;
.super Ljava/lang/Object;
.source "MailData.java"


# instance fields
.field public bHasContactChecked:Z

.field public bHasMailBody:Z

.field public mAccountId:J

.field public mAccountName:Ljava/lang/String;

.field public mAttachment:I

.field public mAttachmentIcon:I

.field public mBody:Ljava/lang/String;

.field public mCalendar:I

.field public mColorIdx:I

.field public mColorLabel:Landroid/graphics/Bitmap;

.field public mContactId:I

.field public mDate:J

.field public mDateString:Ljava/lang/CharSequence;

.field public mDeleteClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
            ">;"
        }
    .end annotation
.end field

.field public mFlag:I

.field public mFrom:Ljava/lang/String;

.field public mFromEmail:Ljava/lang/String;

.field public mFromHitboxListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field public mFrom_origin:Ljava/lang/String;

.field public mId:I

.field public mImportance:I

.field public mInternaldate:J

.field public mIsUnread:Z

.field public mMailAct:I

.field public mPagePlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoto:Landroid/graphics/Bitmap;

.field public mPhotoHitboxListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoUri:Landroid/net/Uri;

.field public mPosition:I

.field public mPreview:Ljava/lang/String;

.field public mProtocol:I

.field public mReady:Z

.field public mReplyClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
            ">;"
        }
    .end annotation
.end field

.field public mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v4, p0, Lcom/htc/htcmailwidgets/MailData;->mId:I

    .line 14
    iput-wide v5, p0, Lcom/htc/htcmailwidgets/MailData;->mAccountId:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mFrom_origin:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailData;->mDate:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mAccountName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailData;->mPreview:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailData;->bHasMailBody:Z

    .line 25
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    .line 26
    iput v2, p0, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    .line 27
    iput v2, p0, Lcom/htc/htcmailwidgets/MailData;->mAttachment:I

    .line 28
    iput v2, p0, Lcom/htc/htcmailwidgets/MailData;->mCalendar:I

    .line 29
    iput v4, p0, Lcom/htc/htcmailwidgets/MailData;->mContactId:I

    .line 30
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mPhotoUri:Landroid/net/Uri;

    .line 31
    iput-wide v5, p0, Lcom/htc/htcmailwidgets/MailData;->mInternaldate:J

    .line 32
    iput v4, p0, Lcom/htc/htcmailwidgets/MailData;->mPosition:I

    .line 33
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailData;->mReady:Z

    .line 35
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailData;->bHasContactChecked:Z

    .line 36
    iput v2, p0, Lcom/htc/htcmailwidgets/MailData;->mImportance:I

    .line 37
    iput v2, p0, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    .line 40
    iput v4, p0, Lcom/htc/htcmailwidgets/MailData;->mColorIdx:I

    .line 41
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mColorLabel:Landroid/graphics/Bitmap;

    .line 44
    iput v4, p0, Lcom/htc/htcmailwidgets/MailData;->mAttachmentIcon:I

    .line 46
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mDeleteClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 47
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mReplyClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 48
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mPhotoHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 49
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mFromHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 50
    iput-object v3, p0, Lcom/htc/htcmailwidgets/MailData;->mPagePlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method
