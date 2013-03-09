.class public Lcom/htc/socialnetwork/SocialNetworkException;
.super Landroid/os/RemoteException;
.source "SocialNetworkException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mOriginalException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 17
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 21
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    .line 22
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 26
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    .line 27
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .parameter "errorCode"
    .parameter "e"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 32
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    .line 33
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    .line 34
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 1
    .parameter "trace"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
