.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;
.super Ljava/lang/Object;
.source "AbstractBody.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Body;


# instance fields
.field private parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 45
    return-void
.end method
