.class public Lcom/htc/android/pim/eas/EASManager$CertificateError;
.super Ljava/lang/Object;
.source "EASManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/pim/eas/EASManager;
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
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
