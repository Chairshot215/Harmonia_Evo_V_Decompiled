.class public Lcom/htc/android/mail/Mime;
.super Ljava/lang/Object;
.source "Mime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/Mime$Part;
    }
.end annotation


# static fields
.field public static final BMP:I = 0x0

.field public static final ContentAttachImageGif:Ljava/lang/String; = "Content-Type: image/gif;\r\n\tname="

.field public static final ContentAttachImageJpg:Ljava/lang/String; = "Content-Type: image/jpeg;\r\n\tname="

.field public static final ContentAttachPlain:Ljava/lang/String; = "Content-Type: text/plain;\r\n\tname="

.field public static final ContentDispositon:Ljava/lang/String; = "Content-Disposition: "

.field public static final ContentDispositonAttach:Ljava/lang/String; = "attachment;\r\n\tfilename="

.field public static final ContentDispositonInline:Ljava/lang/String; = "inline;\r\n\tfilename="

.field public static final ContentEncode:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field public static final ContentId:Ljava/lang/String; = "Content-ID: "

.field public static final ContentInline:Ljava/lang/String; = "inline"

.field public static final ContentType:Ljava/lang/String; = "Content-Type: "

.field public static final ContentTypeAlternativeWithBound:Ljava/lang/String; = "Content-Type: multipart/alternative;\r\n\tboundary="

.field public static final ContentTypeHtml:Ljava/lang/String; = "Content-Type: text/html;\r\n\tcharset="

.field public static final ContentTypeMixedWithBound:Ljava/lang/String; = "Content-Type: multipart/mixed;\r\n\tboundary="

.field public static final ContentTypeName:Ljava/lang/String; = ";\r\n\tname="

.field public static final ContentTypeRelatedWithBound:Ljava/lang/String; = "Content-Type: multipart/related;\r\n\tboundary="

.field public static final ContentTypeText:Ljava/lang/String; = "Content-Type: text/plain;\r\n\tcharset="

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final JPG:I = 0x2

.field public static final MP3:I = 0x5

.field public static final MimeMultiPartDefine:Ljava/lang/String; = "This is a multi-part message in MIME format."

.field public static final MimeVerheader:Ljava/lang/String; = "MIME-Version: "

.field public static final MimeVersion:Ljava/lang/String; = "1.0"

.field public static final PNG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mime"

.field public static final TIFF:I = 0x3

.field public static final TXT:I = 0x4

.field public static final UNSUPPORT:I = -0x1

.field public static final charsetBig5:Ljava/lang/String; = "big5"

.field public static final charsetISO88591:Ljava/lang/String; = "ISO-8859-1"

.field public static final charsetUTF8:Ljava/lang/String; = "utf-8"

.field public static chatset:Ljava/lang/String; = null

.field public static final encode7bit:Ljava/lang/String; = "7bit"

.field public static final encodeBase64:Ljava/lang/String; = "base64"

.field public static encodeMethod:Ljava/lang/String; = null

.field public static final encodeQT:Ljava/lang/String; = "quoted-printable"

.field public static mNotAttachmentType:[Ljava/lang/String; = null

.field public static final shortBase64:Ljava/lang/String; = "B"

.field public static final shortQT:Ljava/lang/String; = "Q"

.field public static supportHTML:Z


# instance fields
.field private includeAttach:Z

.field private isIMAP4:Z

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountID:J

.field public mContentType:I

.field mContext:Landroid/content/Context;

.field private mEnableSDsave:I

.field mHeaderBreak:I

.field mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mime$Part;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBodyEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    sput-boolean v3, Lcom/htc/android/mail/Mime;->supportHTML:Z

    .line 79
    const-string v0, "base64"

    sput-object v0, Lcom/htc/android/mail/Mime;->encodeMethod:Ljava/lang/String;

    .line 80
    const-string v0, "ISO-8859-1"

    sput-object v0, Lcom/htc/android/mail/Mime;->chatset:Ljava/lang/String;

    .line 88
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/Mime;->DEBUG:Z

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/x-pkcs7-signature"

    aput-object v2, v0, v1

    const-string v1, "application/pkcs7-signature"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "application/pgp-signature"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/Mime;->mNotAttachmentType:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJI)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "headerBreak"
    .parameter "boundary"
    .parameter "isIMAP4"
    .parameter "mAccountId"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;I",
            "Ljava/lang/String;",
            "ZJI)V"
        }
    .end annotation

    .prologue
    .local p2, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    const/4 v3, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v3, p0, Lcom/htc/android/mail/Mime;->isIMAP4:Z

    .line 82
    iput v3, p0, Lcom/htc/android/mail/Mime;->mEnableSDsave:I

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/android/mail/Mime;->mAccountID:J

    .line 84
    iput-boolean v3, p0, Lcom/htc/android/mail/Mime;->includeAttach:Z

    .line 85
    sget v1, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v1, p0, Lcom/htc/android/mail/Mime;->mContentType:I

    .line 87
    iput-boolean v3, p0, Lcom/htc/android/mail/Mime;->mTextBodyEmpty:Z

    .line 95
    iput-object p2, p0, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    .line 96
    iput p3, p0, Lcom/htc/android/mail/Mime;->mHeaderBreak:I

    .line 97
    iput-object p1, p0, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    .line 98
    iput-boolean p5, p0, Lcom/htc/android/mail/Mime;->isIMAP4:Z

    .line 99
    iput-wide p6, p0, Lcom/htc/android/mail/Mime;->mAccountID:J

    .line 100
    iput p8, p0, Lcom/htc/android/mail/Mime;->mContentType:I

    .line 101
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 102
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v0, p1, p6, p7}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    .line 106
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headerBreak is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-direct {p0, p4}, Lcom/htc/android/mail/Mime;->findParts(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p4}, Lcom/htc/android/mail/Mime;->processParts(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/Mime;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/Mime;->saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/Mime;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/mail/Mime;->isIMAP4:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/Mime;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/htc/android/mail/Mime;->mAccountID:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/Mime;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/htc/android/mail/Mime;->mAccountID:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/htc/android/mail/Mime;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/Mime;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/mail/Mime;->mTextBodyEmpty:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/mail/Mime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/android/mail/Mime;->mTextBodyEmpty:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/mail/Mime;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/Mime;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final dropAttach(Ljava/lang/String;)Z
    .locals 3
    .parameter "mimetype"

    .prologue
    const/4 v1, 0x0

    .line 985
    if-nez p0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v1

    .line 987
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/htc/android/mail/Mime;->mNotAttachmentType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 988
    sget-object v2, Lcom/htc/android/mail/Mime;->mNotAttachmentType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 989
    const/4 v1, 0x1

    goto :goto_0

    .line 987
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final findParts(Ljava/lang/String;)V
    .locals 13
    .parameter "boundary"

    .prologue
    const/16 v12, 0x2d

    const/4 v1, 0x1

    .line 740
    new-instance v3, Lcom/htc/android/mail/ByteString;

    invoke-direct {v3, p1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    .line 741
    .local v3, b:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v5

    .line 742
    .local v5, bLen:I
    iget-object v2, p0, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 743
    .local v7, len:I
    const/4 v11, -0x1

    .line 744
    .local v11, start:I
    const/4 v8, 0x0

    .line 745
    .local v8, matched:I
    const/4 v10, 0x0

    .line 747
    .local v10, pushed:I
    iget v6, p0, Lcom/htc/android/mail/Mime;->mHeaderBreak:I

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 748
    iget-object v2, p0, Lcom/htc/android/mail/Mime;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ByteString;

    .line 750
    .local v0, s:Lcom/htc/android/mail/ByteString;
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/ByteString;->regionMatches(ZILcom/htc/android/mail/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 751
    add-int/lit8 v8, v8, 0x1

    .line 753
    const/4 v2, -0x1

    if-eq v11, v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/android/mail/Mime$Part;

    invoke-direct {v4, p0, v11}, Lcom/htc/android/mail/Mime$Part;-><init>(Lcom/htc/android/mail/Mime;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mime"

    const-string v4, "add part to mail"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 759
    :cond_1
    add-int/lit8 v11, v6, 0x1

    .line 766
    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 767
    add-int/lit8 v2, v5, 0x2

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v2

    if-ne v12, v2, :cond_4

    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v2

    if-ne v12, v2, :cond_4

    .line 773
    add-int/lit8 v8, v8, -0x1

    .line 780
    .end local v0           #s:Lcom/htc/android/mail/ByteString;
    :cond_2
    if-le v8, v10, :cond_3

    .line 781
    new-instance v9, Lcom/htc/android/mail/Mime$Part;

    invoke-direct {v9, p0, v11}, Lcom/htc/android/mail/Mime$Part;-><init>(Lcom/htc/android/mail/Mime;I)V

    .line 783
    .local v9, p:Lcom/htc/android/mail/Mime$Part;
    iput-boolean v1, v9, Lcom/htc/android/mail/Mime$Part;->mIncomplete:Z

    .line 784
    iget-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Mime"

    const-string v2, "This Part is incomplete!"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v9           #p:Lcom/htc/android/mail/Mime$Part;
    :cond_3
    return-void

    .line 747
    .restart local v0       #s:Lcom/htc/android/mail/ByteString;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private forceSync(Ljava/io/File;)V
    .locals 8
    .parameter "desPathFile"

    .prologue
    .line 927
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Mime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force Sync> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    const/high16 v5, 0x1000

    :try_start_0
    invoke-static {p1, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 930
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 931
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 932
    if-eqz v3, :cond_1

    .line 933
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 942
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v1

    .line 936
    .local v1, fe:Ljava/io/FileNotFoundException;
    const-string v5, "Mime"

    const-string v6, "File Not Found Exception!"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    .end local v1           #fe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 938
    .local v4, se:Ljava/io/SyncFailedException;
    const-string v5, "Mime"

    const-string v6, "Sync Failed Exception"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 939
    .end local v4           #se:Ljava/io/SyncFailedException;
    :catch_2
    move-exception v2

    .line 940
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "Mime"

    const-string v6, "could not force sync to SD card"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final processParts(Ljava/lang/String;)V
    .locals 4
    .parameter "bound"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 791
    iget-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 793
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "dd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParts null>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Mime$Part;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/Mime$Part;->process(Ljava/lang/String;)V

    goto :goto_1

    .line 800
    :cond_2
    return-void
.end method

.method private final renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "tmpName"

    .prologue
    .line 945
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    .local v1, tmp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, fout:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 966
    invoke-direct {p0, v0}, Lcom/htc/android/mail/Mime;->forceSync(Ljava/io/File;)V

    .line 971
    const/4 v2, 0x1

    .line 974
    .end local v0           #fout:Ljava/io/File;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveFileByseperate(Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter
    .parameter "firstBodyLine"
    .parameter "base64encode"
    .parameter "charset"
    .parameter "bound"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 835
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "Mime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  first line and arraysize:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "       "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 838
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "token"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 840
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_1

    const-string v18, "Mime"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "token tmpFilename:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v16

    .line 909
    :cond_2
    :goto_0
    return-object v16

    .line 845
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    .line 846
    const/16 v16, 0x0

    goto :goto_0

    .line 850
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .line 852
    .local v6, endPoint:I
    const/16 v10, 0x3e8

    .line 853
    .local v10, oneTime:I
    sub-int v17, v6, p2

    div-int v14, v17, v10

    .line 854
    .local v14, times:I
    sub-int v17, v6, p2

    mul-int v18, v14, v10

    sub-int v9, v17, v18

    .line 855
    .local v9, last:I
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 856
    .local v2, bodyArray:[B
    const-string v16, ""

    .line 857
    .local v16, tmpFilename:Ljava/lang/String;
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_5

    const-string v17, "Mime"

    const-string v18, "do saveFileByseperate"

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Mime;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v18

    const-string v19, ".Mail"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Mime;->mContentType:I

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 860
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-gt v7, v14, :cond_2

    .line 861
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_6

    const-string v17, "Mime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "decode part : i ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 863
    .local v3, comRun:Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 865
    move/from16 v11, p2

    .line 866
    .local v11, start:I
    move/from16 v5, p2

    .line 867
    .local v5, end:I
    if-ne v7, v14, :cond_9

    .line 868
    mul-int v17, v14, v10

    add-int v11, p2, v17

    .line 869
    mul-int v17, v14, v10

    add-int v17, v17, p2

    add-int v5, v17, v9

    .line 878
    :goto_2
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_7

    const-string v17, "Mime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " @@@@  decode start."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_7
    if-eqz p3, :cond_a

    .line 880
    new-instance v12, Lcom/htc/android/mail/ByteStringStreams;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v11, v5}, Lcom/htc/android/mail/ByteStringStreams;-><init>(Ljava/util/ArrayList;II)V

    .line 882
    .local v12, streams:Lcom/htc/android/mail/ByteStringStreams;
    invoke-virtual {v12}, Lcom/htc/android/mail/ByteStringStreams;->getBase64InputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 885
    .local v8, in:Ljava/io/InputStream;
    :try_start_0
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_8

    const-string v17, "Mime"

    const-string v18, " @@@@ decode."

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_8
    invoke-static {v8}, Lcom/htc/android/mail/Base64;->decode(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 887
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/Mime;->saveFileWithPath(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    const/4 v2, 0x0

    .line 860
    .end local v8           #in:Ljava/io/InputStream;
    .end local v12           #streams:Lcom/htc/android/mail/ByteStringStreams;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 872
    :cond_9
    mul-int v17, v7, v10

    add-int v11, p2, v17

    .line 873
    add-int/lit8 v17, v7, 0x1

    mul-int v17, v17, v10

    add-int v5, p2, v17

    goto :goto_2

    .line 890
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v12       #streams:Lcom/htc/android/mail/ByteStringStreams;
    :catch_0
    move-exception v4

    .line 891
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 892
    const/4 v2, 0x0

    .line 893
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v15, tmp:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Mime;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b02a8

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 897
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 901
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/InputStream;
    .end local v12           #streams:Lcom/htc/android/mail/ByteStringStreams;
    .end local v15           #tmp:Ljava/io/File;
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v11, v5, v1}, Lcom/htc/android/mail/Util;->linesToByteString(Ljava/util/ArrayList;IILjava/lang/String;)Lcom/htc/android/mail/ByteString;

    move-result-object v13

    .line 902
    .local v13, temp:Lcom/htc/android/mail/ByteString;
    iget-object v2, v13, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 903
    sget-boolean v17, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v17, :cond_b

    const-string v17, "Mime"

    const-string v18, " @@@@ save."

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/Mime;->saveFileWithPath(Ljava/lang/String;[B)Z

    .line 905
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private final saveFileWithPath(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "name"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 914
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 916
    .local v1, f:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 917
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v1           #f:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 921
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method final findText()Z
    .locals 9

    .prologue
    .line 685
    iget-object v6, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 686
    .local v1, len:I
    const/4 v4, 0x0

    .line 688
    .local v4, text:Z
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_6

    .line 689
    iget-object v6, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Mime$Part;

    .line 690
    .local v2, p:Lcom/htc/android/mail/Mime$Part;
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Mime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "try find i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_0
    iget-boolean v6, v2, Lcom/htc/android/mail/Mime$Part;->mNoBody:Z

    if-eqz v6, :cond_2

    .line 692
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "Mime"

    const-string v7, "noBody exist."

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 695
    :cond_2
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "Mime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_3
    invoke-virtual {v2}, Lcom/htc/android/mail/Mime$Part;->find()Z

    move-result v3

    .line 697
    .local v3, ret:Z
    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    .line 698
    :cond_4
    const/4 v4, 0x1

    .line 699
    :cond_5
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move v5, v4

    .line 704
    .end local v2           #p:Lcom/htc/android/mail/Mime$Part;
    .end local v3           #ret:Z
    .end local v4           #text:Z
    .local v5, text:Z
    :goto_1
    return v5

    .end local v5           #text:Z
    .restart local v4       #text:Z
    :cond_6
    move v5, v4

    .end local v4           #text:Z
    .restart local v5       #text:Z
    goto :goto_1
.end method

.method final get(I)Lcom/htc/android/mail/Mime$Part;
    .locals 1
    .parameter "index"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mime$Part;

    return-object v0
.end method

.method final pruneAlternatives()V
    .locals 7

    .prologue
    .line 804
    iget-object v4, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    const/4 v0, 0x0

    .line 809
    .local v0, candidate:I
    iget-object v4, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 817
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 818
    iget-object v4, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mime$Part;

    iget-boolean v4, v4, Lcom/htc/android/mail/Mime$Part;->mIncomplete:Z

    if-nez v4, :cond_3

    .line 819
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "Mime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is complete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_2
    move v0, v1

    .line 817
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Mime$Part;

    .line 831
    .local v2, keeper:Lcom/htc/android/mail/Mime$Part;
    goto :goto_0
.end method

.method final saveParts(JJIIZLjava/util/ArrayList;Landroid/net/Uri;)Z
    .locals 14
    .parameter "accountId"
    .parameter "messageId"
    .parameter "messageIndex"
    .parameter "parentContentType"
    .parameter "includeText"
    .parameter
    .parameter "summaryUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 708
    .local p8, message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 709
    .local v12, len:I
    const/4 v11, 0x0

    .line 711
    .local v11, attachment:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_5

    .line 712
    iget-object v1, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mime$Part;

    .line 713
    .local v0, p:Lcom/htc/android/mail/Mime$Part;
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try save i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    iget-boolean v1, v0, Lcom/htc/android/mail/Mime$Part;->mNoBody:Z

    if-eqz v1, :cond_2

    .line 716
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Mime"

    const-string v2, "noBody exist."

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 720
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Mime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 721
    invoke-virtual/range {v0 .. v10}, Lcom/htc/android/mail/Mime$Part;->save(JJIIIZLjava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v13

    .line 722
    .local v13, ret:Z
    if-nez v13, :cond_4

    if-eqz v11, :cond_1

    .line 723
    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    .line 728
    .end local v0           #p:Lcom/htc/android/mail/Mime$Part;
    .end local v13           #ret:Z
    :cond_5
    return v11
.end method

.method final size()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/htc/android/mail/Mime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
