.class public Lgov/nist/javax/sip/header/Event;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Event.java"

# interfaces
.implements Ljavax/sip/header/EventHeader;


# static fields
.field private static final serialVersionUID:J = -0x59a0cd7ede813719L


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Event"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Event;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    return-object p1
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Event;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Lgov/nist/javax/sip/header/Event;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p1, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    iget-object v2, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the eventId parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Event;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the eventType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Event;->eventType:Ljava/lang/String;

    return-void
.end method
