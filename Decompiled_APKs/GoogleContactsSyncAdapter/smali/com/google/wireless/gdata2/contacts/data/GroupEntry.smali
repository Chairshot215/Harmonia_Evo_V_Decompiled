.class public Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "GroupEntry.java"


# instance fields
.field private systemGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public getSystemGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    return-object v0
.end method

.method public setSystemGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "systemGroup"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    .line 30
    return-void
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 34
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v0, "GroupEntry:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, " systemGroup:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->systemGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_0
    return-void
.end method
