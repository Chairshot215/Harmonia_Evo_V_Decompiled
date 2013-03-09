.class public Lcom/sprint/internal/ConnectionManagerException;
.super Ljava/lang/Exception;
.source "ConnectionManagerException.java"


# static fields
.field private static final srialVersionUID:J = 0x2L


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "ConnectionManagerException"

    iput-object v0, p0, Lcom/sprint/internal/ConnectionManagerException;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sprint/internal/ConnectionManagerException;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
