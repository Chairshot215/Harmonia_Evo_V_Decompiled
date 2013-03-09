.class public final Lcom/htc/protection/api/ProEngine$IllegalDeviceException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protection/api/ProEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalDeviceException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/htc/protection/api/ProEngine$IllegalDeviceException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    invoke-super {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace()V
    .locals 0

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method
