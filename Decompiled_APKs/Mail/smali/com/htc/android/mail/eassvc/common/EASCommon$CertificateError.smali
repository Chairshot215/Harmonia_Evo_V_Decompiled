.class public Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
.super Ljava/lang/Object;
.source "EASCommon.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateError"
.end annotation


# instance fields
.field public certificate:Ljava/security/cert/X509Certificate;

.field public errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
