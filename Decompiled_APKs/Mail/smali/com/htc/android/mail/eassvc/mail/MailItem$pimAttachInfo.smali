.class public Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
.super Ljava/lang/Object;
.source "MailItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/mail/MailItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "pimAttachInfo"
.end annotation


# instance fields
.field mContentId:Ljava/lang/String;

.field mFileSize:Ljava/lang/String;

.field mFilename:Ljava/lang/String;

.field mFilepath:Ljava/lang/String;

.field mFilereference:Ljava/lang/String;

.field mIsInLine:Ljava/lang/String;

.field mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilepath:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFileSize:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilereference:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mMimeType:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    return-void
.end method
