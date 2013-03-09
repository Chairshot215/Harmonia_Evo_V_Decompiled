.class public Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
.super Ljava/lang/Object;
.source "GroupMembershipInfo.java"


# instance fields
.field private deleted:Z

.field private group:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "groupId"
    .parameter "deleted"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->group:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->deleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0
    .parameter "deleted"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->deleted:Z

    .line 40
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->group:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 43
    const-string v0, "GroupMembershipInfo"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " group:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :cond_0
    const-string v0, " deleted:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 46
    return-void
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->group:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "the group must be present"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    return-void
.end method
