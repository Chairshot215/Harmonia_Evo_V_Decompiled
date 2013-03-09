.class public Ljava/lang/ExceptionInInitializerError;
.super Ljava/lang/LinkageError;
.source "ExceptionInInitializerError.java"


# static fields
.field private static final serialVersionUID:J = 0x151e34d009a19380L


# instance fields
.field private exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    iput-object p1, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method
