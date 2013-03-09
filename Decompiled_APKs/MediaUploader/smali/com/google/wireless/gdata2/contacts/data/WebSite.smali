.class public Lcom/google/wireless/gdata2/contacts/data/WebSite;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "WebSite.java"


# static fields
.field public static final TYPE_BLOG:B = 0x2t

.field public static final TYPE_FTP:B = 0x7t

.field public static final TYPE_HOME:B = 0x4t

.field public static final TYPE_HOMEPAGE:B = 0x1t

.field public static final TYPE_OTHER:B = 0x6t

.field public static final TYPE_PROFILE:B = 0x3t

.field public static final TYPE_WORK:B = 0x5t


# instance fields
.field private href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p2, p3, p4}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 29
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getHRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    return-object v0
.end method

.method public setHRef(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    const-string v0, "WebSite"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 50
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, " href:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_0
    return-void
.end method
