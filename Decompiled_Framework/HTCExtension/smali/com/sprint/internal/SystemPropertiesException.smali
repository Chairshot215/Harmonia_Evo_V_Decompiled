.class public Lcom/sprint/internal/SystemPropertiesException;
.super Ljava/lang/Exception;
.source "SystemPropertiesException.java"


# static fields
.field public static final SP_EXC_READABLE:Ljava/lang/String; = "SystemProperty readable exception: not allow to read"

.field public static final SP_EXC_WRITABLE:Ljava/lang/String; = "SystemProperty writable exception: not allow to write"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "SystemPropertiesException"

    iput-object v0, p0, Lcom/sprint/internal/SystemPropertiesException;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sprint/internal/SystemPropertiesException;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
