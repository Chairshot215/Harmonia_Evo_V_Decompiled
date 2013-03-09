.class Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonEvent"
.end annotation


# instance fields
.field negativeClick:Landroid/content/DialogInterface$OnClickListener;

.field neutralClick:Landroid/content/DialogInterface$OnClickListener;

.field positiveClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
