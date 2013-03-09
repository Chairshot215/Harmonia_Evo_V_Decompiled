.class public Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
.super Ljava/lang/Object;
.source "EASMailSendItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BCC:Ljava/lang/String; = "Bcc: "

.field public static final BODY:Ljava/lang/String; = "\r\n"

.field public static final CC:Ljava/lang/String; = "Cc: "

.field public static final COMMAND_SEND:I = 0x1

.field public static final COMMAND_SMART_FORWARD:I = 0x3

.field public static final COMMAND_SMART_REPLY:I = 0x2

.field public static final CONTENT_ATTACH_BINARY:Ljava/lang/String; = "Content-Type: application/octet-stream;\r\n\tname="

.field public static final CONTENT_ATTACH_CAL_MEETING_PROPOSE_NEW_TIME:Ljava/lang/String; = "Content-Type: text/calendar; charset=\"utf-8\"; method=COUNTER"

.field public static final CONTENT_ATTACH_CAL_MEETING_REQ:Ljava/lang/String; = "Content-Type: text/calendar; charset=\"utf-8\"; method=REQUEST"

.field public static final CONTENT_ATTACH_CAL_MEETING_RESP:Ljava/lang/String; = "Content-Type: text/calendar; charset=\"utf-8\"; method=REPLY"

.field public static final CONTENT_ATTACH_IMG_GIF:Ljava/lang/String; = "Content-Type: image/gif;\r\n\tname="

.field public static final CONTENT_ATTACH_IMG_JPG:Ljava/lang/String; = "Content-Type: image/jpeg;\r\n\tname="

.field public static final CONTENT_ATTACH_IMG_PNG:Ljava/lang/String; = "Content-Type: image/png;\r\n\tname="

.field public static final CONTENT_ATTACH_MPEG:Ljava/lang/String; = "Content-Type: video/mpeg;\r\n\tname="

.field public static final CONTENT_ATTACH_PDF:Ljava/lang/String; = "Content-Type: application/pdf;\r\n\tname="

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: "

.field public static final CONTENT_DISPOSITION_ATTACH:Ljava/lang/String; = "attachment;\r\n\tfilename="

.field public static final CONTENT_DISPOSITION_INLINE:Ljava/lang/String; = "inline;\r\n\tfilename="

.field public static final CONTENT_DISPOSITON:Ljava/lang/String; = "Content-Disposition: "

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field public static final CONTENT_ID:Ljava/lang/String; = "Content-ID: "

.field public static final CONTENT_INLINE:Ljava/lang/String; = "inline"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field public static final CONTENT_TYPE_HTML:Ljava/lang/String; = "Content-Type: text/html;\r\n\tcharset= "

.field public static final CONTENT_TYPE_Mixed:Ljava/lang/String; = "Content-Type: multipart/mixed;\r\n\tboundary="

.field public static final CONTENT_TYPE_NAME:Ljava/lang/String; = ";\r\n\tname="

.field public static final CONTENT_TYPE_RelatedWithBound:Ljava/lang/String; = "Content-Type: multipart/related;\r\n\tboundary="

.field public static final CONTENT_TYPE_TEXT:Ljava/lang/String; = "Content-Type: text/plain;\r\n\tcharset= "

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Content_TYPE_AlternativeWithBound:Ljava/lang/String; = "Content-Type: multipart/alternative;\r\n\tboundary="

.field public static final END_LINE:Ljava/lang/String; = "\r\n"

.field public static final FROM:Ljava/lang/String; = "From: "

.field public static final IMPOETANCE_LOW:Ljava/lang/String; = "Low"

.field public static final IMPORTANCE:Ljava/lang/String; = "Importance: "

.field public static final IMPORTANCE_HIGH:Ljava/lang/String; = "High"

.field public static final IMPORTANCE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final MESSAGE_ID:Ljava/lang/String; = "Message-ID: "

.field public static final MIME_VER:Ljava/lang/String; = "MIME-Version: "

.field public static final SENDER:Ljava/lang/String; = "Sender: "

.field public static final SUBJECT:Ljava/lang/String; = "Subject: "

.field public static final TAG:Ljava/lang/String; = "EASMailSendItem"

.field public static final TO:Ljava/lang/String; = "To: "

.field public static final X_MIMEOLE:Ljava/lang/String; = "X-MimeOLE: "

.field public static final charsetBig5:Ljava/lang/String; = "big5"

.field public static final charsetISO88591:Ljava/lang/String; = "ISO-8859-1"

.field public static final charsetUTF8:Ljava/lang/String; = "utf-8"

.field public static final encode7bit:Ljava/lang/String; = "7bit"

.field public static final encodeBase64:Ljava/lang/String; = "base64"

.field public static mX_MimeOLE:Ljava/lang/String;


# instance fields
.field public mArrachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBackupOriginalBody:Ljava/lang/String;

.field public mBcc:Ljava/lang/String;

.field public mBody:Ljava/lang/String;

.field public mBuackupOriginalPlainBody:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mCollId:Ljava/lang/String;

.field public mCommand:I

.field public mFrom:Ljava/lang/String;

.field public mGlobalMail:Z

.field public mHeaderHtml:Ljava/lang/String;

.field public mHeaderPlain:Ljava/lang/String;

.field public mImportance:Ljava/lang/String;

.field public mMIME_Version:Ljava/lang/String;

.field public mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

.field public mMessageId:J

.field public mPlainBody:Ljava/lang/String;

.field public mRelatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public mSaveInSent:Z

.field public mSendInsteadofForeard:Z

.field public mSender:Ljava/lang/String;

.field public mSubject:Ljava/lang/String;

.field public mTo:Ljava/lang/String;

.field public mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mX_MimeOLE:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    .line 66
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    .line 68
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    .line 89
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    .line 90
    const-string v0, "Normal"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    .line 91
    const-string v0, "Produced By Microsoft MimeOLE V6.00.2900.2180"

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mX_MimeOLE:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .parameter "in"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v7, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    .line 64
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    .line 65
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    .line 66
    iput v7, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    .line 68
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    .line 69
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    .line 70
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    .line 71
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    .line 72
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    .line 73
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    .line 74
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 75
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 76
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    .line 77
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    .line 78
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    .line 79
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    .line 80
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    .line 81
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    .line 82
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    .line 83
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    .line 84
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    .line 147
    new-array v1, v8, [Z

    .line 148
    .local v1, bValue:[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 149
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lt v5, v8, :cond_0

    .line 150
    aget-boolean v5, v1, v6

    iput-boolean v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    .line 151
    aget-boolean v5, v1, v7

    iput-boolean v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    .line 152
    const/4 v5, 0x2

    aget-boolean v5, v1, v5

    iput-boolean v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mX_MimeOLE:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;>;"
    sget-object v5, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 175
    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 177
    .local v0, attachment:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    const-string v5, "Content-Type: text/calendar; charset=\"utf-8\"; method=REQUEST"

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Content-Type: text/calendar; charset=\"utf-8\"; method=COUNTER"

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Content-Type: text/calendar; charset=\"utf-8\"; method=REPLY"

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    :cond_1
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    goto :goto_0

    .line 182
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0           #attachment:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v4, related:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;>;"
    sget-object v5, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 189
    if-eqz v4, :cond_4

    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 191
    .restart local v0       #attachment:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v0           #attachment:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMailSendItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final GenBoundary(I)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----=_Part_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkAttachmentEqual(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z
    .locals 3
    .parameter "item1"
    .parameter "item2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    move v0, v1

    .line 275
    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {p1, p2}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->isEqual(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 280
    goto :goto_0
.end method

.method private checkAttachmentListEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;>;"
    .local p2, list2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v1, v3

    .line 267
    :goto_0
    return v1

    .line 256
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    :cond_2
    move v1, v4

    .line 257
    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    move v1, v4

    .line 260
    goto :goto_0

    .line 262
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 263
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkAttachmentEqual(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v4

    .line 264
    goto :goto_0

    .line 262
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v3

    .line 267
    goto :goto_0
.end method

.method private checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v0, 0x0

    .line 244
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public containLocalAttachments()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v2

    .line 200
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 201
    .local v1, item:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    iget-boolean v3, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    if-nez v3, :cond_2

    .line 202
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isEqual(Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 210
    if-nez p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    iget-boolean v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    iget-boolean v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    iget-boolean v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    iget v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkAttachmentEqual(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->checkAttachmentListEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 99
    const/4 v1, 0x3

    new-array v0, v1, [Z

    .line 100
    .local v0, bValue:[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    aput-boolean v2, v0, v1

    .line 101
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    aput-boolean v2, v0, v1

    .line 102
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    aput-boolean v2, v0, v1

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 104
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mX_MimeOLE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 127
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    return-void
.end method
