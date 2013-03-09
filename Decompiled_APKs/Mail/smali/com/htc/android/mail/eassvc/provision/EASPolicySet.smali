.class public Lcom/htc/android/mail/eassvc/provision/EASPolicySet;
.super Ljava/lang/Object;
.source "EASPolicySet.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public needWipe:Z

.field public provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

.field public wipeOK:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->needWipe:Z

    .line 8
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->wipeOK:Z

    .line 9
    new-instance v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 12
    return-void
.end method
