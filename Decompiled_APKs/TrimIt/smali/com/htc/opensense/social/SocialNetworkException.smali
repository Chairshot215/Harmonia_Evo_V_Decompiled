.class public Lcom/htc/opensense/social/SocialNetworkException;
.super Landroid/os/RemoteException;
.source "SocialNetworkException.java"


# static fields
.field public static final API_NOT_SUPPORT:I = 0x7d9

.field public static final CACHEPATH_NOT_EXIST:I = 0x7d2

.field public static final CONCURRENT_EXCEPTION:I = 0x7e3

.field public static final DISPLAYSIZE_NOT_SET:I = 0x7dc

.field public static final DOWNLOAD_THREAD_ERROR:I = 0x7e2

.field public static final ERROR_CACHESIZE_FULL:I = 0x7d1

.field public static final ERROR_EXCEPTION:I = 0x7d0

.field public static final ERROR_IO_ISSUE:I = 0x7d8

.field public static final ERROR_NETWORK_ISSUE:I = 0x7d6

.field public static final ERROR_NO_CONNECTION:I = 0x7da

.field public static final ERROR_PARSING:I = 0x7e6

.field public static final ERROR_URL_ISSUE:I = 0x7d7

.field public static final INVALID_SQL_ARGUMENT:I = 0x7df

.field public static final INVALID_TOKEN:I = 0x7dd

.field public static final INVALID_USERNAME_PASSWORD:I = 0x1ce9

.field public static final MIME_NOT_SUPPORT:I = 0x7db

.field public static final MSG_ALBUM_FULL:I = 0x1f47

.field public static final MSG_ALBUM_NOT_EXIST:I = 0x1f44

.field public static final MSG_EXCEEDS_BANDWIDTH:I = 0x1f4b

.field public static final MSG_EXCEEDS_MAXIMUM_REQUESTS:I = 0x1f43

.field public static final MSG_EXCEEDS_MAXIMUM_STORAGE:I = 0x1f48

.field public static final MSG_FACEBOOK_RELOGIN:I = 0x1f45

.field public static final MSG_FLICKR_RELOGIN:I = 0x1f46

.field public static final MSG_FORMAT_NOT_SUPPORT:I = 0x1f4a

.field public static final MSG_IMG_INVALID:I = 0x1f49

.field public static final MSG_SERVICE_NOT_AVAILABLE:I = 0x1f42

.field public static final MSG_UNKNOWN_ERROR_REUPLOAD:I = 0x1f41

.field public static final NO_PHOTO_PATH:I = 0x7d4

.field public static final PATH_NOT_WRITABLE:I = 0x7d3

.field public static final PHOTO_TOO_LARGE:I = 0x7d5

.field public static final SERVICE_NOT_AVAILABLE:I = 0x7e1

.field public static final SESSION_KEY_REQUIRED:I = 0x1d1d

.field public static final SQLITE_FULL_EXCEPTION:I = 0x7e4

.field public static final SQL_QUERY_ERROR:I = 0x7de

.field public static final UNKNOWN_HOST_EXCEPTION:I = 0x7e5

.field public static final USERID_NOT_SET:I = 0x7e0

.field private static final serialVersionUID:J = 0x5c5ba28842f321f5L


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mOrigThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 68
    iput p1, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    .line 69
    iput-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 74
    iput p1, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    .line 75
    iput-object p2, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "code"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 62
    iput-object p3, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    .line 63
    iput p1, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    .line 64
    iput-object p2, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .parameter "code"
    .parameter "t"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 80
    iput p1, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    .line 81
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    .line 83
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "SocialNetworkException (code:%d, msg:%s) %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/opensense/social/SocialNetworkException;->mOrigThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SocialNetworkException (code:%d, msg:%s) %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/htc/opensense/social/SocialNetworkException;->mErrorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-super {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
