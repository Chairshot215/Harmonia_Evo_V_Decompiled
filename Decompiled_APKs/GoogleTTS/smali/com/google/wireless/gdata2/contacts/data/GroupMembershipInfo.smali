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


# virtual methods
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
