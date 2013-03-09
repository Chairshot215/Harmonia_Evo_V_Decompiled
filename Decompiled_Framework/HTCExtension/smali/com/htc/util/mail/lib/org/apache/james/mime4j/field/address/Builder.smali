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

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->singleton:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuffer;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V

    iget-object v0, p2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAddress(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
    .locals 6

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v4, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    instance-of v4, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    goto :goto_0

    :cond_1
    instance-of v4, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v4, :cond_4

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    instance-of v4, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v4, :cond_2

    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Group;

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;)V

    goto :goto_0

    :cond_2
    instance-of v4, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method private buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 4

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildRoute(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    :cond_0
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v2, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    :cond_1
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    :goto_0
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildMailbox(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildMailbox(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 3

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    instance-of v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private buildNameAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;
    .locals 5

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;)V

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildRoute(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V

    :goto_0
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v1, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    invoke-direct {v3, v2, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildString(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/BaseNode;->firstToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/BaseNode;->lastToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    iget-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-nez p2, :cond_0

    iget-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->singleton:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddressList(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;->buildAddress(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v4
.end method
