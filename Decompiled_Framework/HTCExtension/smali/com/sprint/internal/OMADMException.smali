.class public Lcom/sprint/internal/OMADMException;
.super Ljava/lang/Exception;
.source "OMADMException.java"


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "OMADMException"

    iput-object v0, p0, Lcom/sprint/internal/OMADMException;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprint/internal/OMADMException;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
