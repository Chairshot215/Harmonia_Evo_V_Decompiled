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

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    return-void
.end method


# virtual methods
.method public getExceptionType()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/mimemessage/MessagingException;->mExceptionType:I

    return v0
.end method
