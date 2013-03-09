.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->singleton:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuffer;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1
    .parameter "out"
    .parameter "specialToken"

    .prologue
    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V

    .line 211
    iget-object v0, p2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 5
    .parameter "route"
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 185
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 186
    .local v1, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, localPart:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, domain:Ljava/lang/String;
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 1
    .parameter "node"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAddress(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    .locals 6
    .parameter "node"

    .prologue
    .line 69
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 70
    .local v0, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 71
    .local v1, n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    .line 72
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    .line 85
    :goto_0
    return-object v4

    .line 74
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v4, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    .line 75
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    goto :goto_0

    .line 77
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v4, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v4, :cond_4

    .line 78
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 80
    .local v2, n2:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v4, :cond_2

    .line 81
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Group;

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;

    .end local v2           #n2:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;)V

    goto :goto_0

    .line 83
    .restart local v2       #n2:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    instance-of v4, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    .line 84
    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v2           #n2:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;)V

    goto :goto_0

    .line 88
    .restart local v2       #n2:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 92
    .end local v2           #n2:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .end local v3           #name:Ljava/lang/String;
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method private buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 4
    .parameter "node"

    .prologue
    .line 150
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 151
    .local v0, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 152
    .local v2, route:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 153
    .local v1, n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_1

    .line 154
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildRoute(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    move-result-object v2

    .line 155
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 162
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_2

    .line 163
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 157
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_0

    .line 160
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 165
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;
    .locals 5
    .parameter "node"

    .prologue
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, results:Ljava/util/ArrayList;
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 101
    .local v0, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 103
    .local v1, n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_0

    .line 104
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildMailbox(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 108
    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildMailbox(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 3
    .parameter "node"

    .prologue
    .line 112
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 113
    .local v0, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 114
    .local v1, n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_0

    .line 115
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    .line 121
    :goto_0
    return-object v2

    .line 117
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1

    .line 118
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 120
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v2, :cond_2

    .line 121
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;

    move-result-object v2

    goto :goto_0

    .line 124
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private buildNameAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;
    .locals 5
    .parameter "node"

    .prologue
    .line 129
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 130
    .local v0, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 132
    .local v1, n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v3, :cond_0

    .line 133
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 140
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v3, :cond_1

    .line 141
    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;)V

    return-object v3

    .line 136
    .end local v2           #name:Ljava/lang/String;
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 145
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildRoute(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v2, results:Ljava/util/ArrayList;
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 171
    .local v0, it:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 173
    .local v1, n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    .line 174
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .restart local v1       #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 178
    .end local v1           #n:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    invoke-direct {v3, v2, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .parameter "node"
    .parameter "stripSpaces"

    .prologue
    .line 193
    iget-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 194
    .local v0, head:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    iget-object v2, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 195
    .local v2, tail:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v1, out:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 198
    iget-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 200
    if-nez p2, :cond_0

    .line 201
    iget-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->singleton:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddressList(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    .locals 6
    .parameter "node"

    .prologue
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v3, list:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 61
    invoke-virtual {p1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;

    .line 62
    .local v1, childNode:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddress(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 63
    .local v0, address:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #address:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    .end local v1           #childNode:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;
    :cond_0
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v4
.end method
