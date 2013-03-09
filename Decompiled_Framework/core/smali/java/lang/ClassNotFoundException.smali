.class public Ljava/lang/ClassNotFoundException;
.super Ljava/lang/Exception;
.source "ClassNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x7f5acd663ed4208eL


# instance fields
.field private ex:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-object v0
.end method
