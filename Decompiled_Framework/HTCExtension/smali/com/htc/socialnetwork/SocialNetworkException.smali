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

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mErrorCode:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkException;->mOriginalException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
