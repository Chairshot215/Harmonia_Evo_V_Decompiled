.class public Lcom/google/wireless/gdata/contacts/data/GroupEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "GroupEntry.java"


# instance fields
.field private systemGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 33
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const-string v0, "GroupEntry:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, " systemGroup:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_0
    return-void
.end method
