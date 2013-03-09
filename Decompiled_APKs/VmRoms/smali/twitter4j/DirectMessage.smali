.class public Ltwitter4j/DirectMessage;
.super Ltwitter4j/TwitterResponse;
.source "DirectMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d250e1d8adf6ba9L


# instance fields
.field private created_at:Ljava/util/Date;

.field private id:I

.field private recipient:Ltwitter4j/User;

.field private recipient_id:I

.field private recipient_screen_name:Ljava/lang/String;

.field private sender:Ltwitter4j/User;

.field private sender_id:I

.field private sender_screen_name:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 0
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 58
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/DirectMessage;->init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V
    .locals 1
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 54
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ltwitter4j/DirectMessage;->init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 55
    return-void
.end method

.method static constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;
    .locals 10
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/http/Response;",
            "Ltwitter4j/Twitter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 122
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 123
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-static {v0}, Ltwitter4j/DirectMessage;->isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 124
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    :goto_0
    return-object v7

    .line 127
    :cond_0
    :try_start_0
    const-string v7, "direct-messages"

    invoke-static {v7, v0}, Ltwitter4j/DirectMessage;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 128
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v8, "direct_message"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 130
    .local v2, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 131
    .local v4, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v3, messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 133
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 134
    .local v5, status:Lorg/w3c/dom/Element;
    new-instance v7, Ltwitter4j/DirectMessage;

    invoke-direct {v7, p0, v5, p1}, Ltwitter4j/DirectMessage;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #status:Lorg/w3c/dom/Element;
    :cond_1
    move-object v7, v3

    .line 136
    goto :goto_0

    .line 137
    .end local v1           #i:I
    .end local v2           #list:Lorg/w3c/dom/NodeList;
    .end local v3           #messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    .end local v4           #size:I
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 138
    .local v6, te:Ltwitter4j/TwitterException;
    invoke-static {v0}, Ltwitter4j/DirectMessage;->isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 141
    :cond_2
    throw v6
.end method

.method private init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 3
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "direct_message"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 62
    new-instance v1, Ltwitter4j/User;

    const-string v0, "sender"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, p1, v0, p3}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    iput-object v1, p0, Ltwitter4j/DirectMessage;->sender:Ltwitter4j/User;

    .line 64
    new-instance v1, Ltwitter4j/User;

    const-string v0, "recipient"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, p1, v0, p3}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    iput-object v1, p0, Ltwitter4j/DirectMessage;->recipient:Ltwitter4j/User;

    .line 66
    const-string v0, "id"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v0

    iput v0, p0, Ltwitter4j/DirectMessage;->id:I

    .line 67
    const-string v0, "text"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/DirectMessage;->text:Ljava/lang/String;

    .line 68
    const-string v0, "sender_id"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v0

    iput v0, p0, Ltwitter4j/DirectMessage;->sender_id:I

    .line 69
    const-string v0, "recipient_id"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v0

    iput v0, p0, Ltwitter4j/DirectMessage;->recipient_id:I

    .line 70
    const-string v0, "created_at"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/DirectMessage;->created_at:Ljava/util/Date;

    .line 71
    const-string v0, "sender_screen_name"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/DirectMessage;->sender_screen_name:Ljava/lang/String;

    .line 72
    const-string v0, "recipient_screen_name"

    invoke-static {v0, p2}, Ltwitter4j/DirectMessage;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/DirectMessage;->recipient_screen_name:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    if-nez p1, :cond_0

    move v0, v2

    .line 160
    .end local p1
    :goto_0
    return v0

    .line 157
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    instance-of v0, p1, Ltwitter4j/DirectMessage;

    if-eqz v0, :cond_2

    check-cast p1, Ltwitter4j/DirectMessage;

    .end local p1
    iget v0, p1, Ltwitter4j/DirectMessage;->id:I

    iget v1, p0, Ltwitter4j/DirectMessage;->id:I

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ltwitter4j/DirectMessage;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Ltwitter4j/DirectMessage;->id:I

    return v0
.end method

.method public getRecipient()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ltwitter4j/DirectMessage;->recipient:Ltwitter4j/User;

    return-object v0
.end method

.method public getRecipientId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Ltwitter4j/DirectMessage;->recipient_id:I

    return v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ltwitter4j/DirectMessage;->recipient_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ltwitter4j/DirectMessage;->sender:Ltwitter4j/User;

    return-object v0
.end method

.method public getSenderId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Ltwitter4j/DirectMessage;->sender_id:I

    return v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/DirectMessage;->sender_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/DirectMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Ltwitter4j/DirectMessage;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DirectMessage{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessage;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessage;->sender_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessage;->recipient_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", created_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessage;->created_at:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender_screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessage;->sender_screen_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient_screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessage;->recipient_screen_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessage;->sender:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessage;->recipient:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
