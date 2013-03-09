.class public Lgov/nist/javax/sip/message/HeaderIterator;
.super Ljava/lang/Object;
.source "HeaderIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private index:I

.field private sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

.field private sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

.field private toRemove:Z


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    iput-object p2, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iput-boolean v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    iput v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    iget-object v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
