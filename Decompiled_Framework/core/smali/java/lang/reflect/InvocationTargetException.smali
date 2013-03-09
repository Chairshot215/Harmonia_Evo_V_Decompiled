.class public Ljava/lang/reflect/InvocationTargetException;
.super Ljava/lang/Exception;
.source "InvocationTargetException.java"


# static fields
.field private static final serialVersionUID:J = 0x38b1268ed671246fL


# instance fields
.field private target:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTargetException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method
