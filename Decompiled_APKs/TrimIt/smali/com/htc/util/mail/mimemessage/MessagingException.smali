.class public Lcom/htc/util/mail/mimemessage/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final AUTHENTICATION_FAILED:I = 0x5

.field public static final AUTH_REQUIRED:I = 0x3

.field public static final DUPLICATE_ACCOUNT:I = 0x6

.field public static final GENERAL_SECURITY:I = 0x4

.field public static final IOERROR:I = 0x1

.field public static final NO_ERROR:I = -0x1

.field public static final TLS_REQUIRED:I = 0x2

.field public static final UNSPECIFIED_EXCEPTION:I = 0x0

.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "exceptionType"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 65
    iput p1, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 73
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    .line 57
    return-void
.end method


# virtual methods
.method public getExceptionType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    return v0
.end method
