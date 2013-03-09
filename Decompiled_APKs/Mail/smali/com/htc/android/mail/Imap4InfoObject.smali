.class public Lcom/htc/android/mail/Imap4InfoObject;
.super Ljava/lang/Object;
.source "Imap4InfoObject.java"


# instance fields
.field public cid:Ljava/lang/String;

.field public cidfname:Ljava/lang/String;

.field public contenttype:Ljava/lang/String;

.field public encode:Ljava/lang/String;

.field public index:Ljava/lang/String;

.field public inline:Ljava/lang/String;

.field public isfile:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public typename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->type:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->subtype:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->typename:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->cid:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->cidfname:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->encode:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->size:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->index:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->inline:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->contenttype:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Imap4InfoObject;->isfile:Ljava/lang/String;

    return-void
.end method
