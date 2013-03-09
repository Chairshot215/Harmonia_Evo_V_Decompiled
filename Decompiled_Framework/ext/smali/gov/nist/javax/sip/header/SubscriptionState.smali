.class public Lgov/nist/javax/sip/header/SubscriptionState;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SubscriptionState.java"

# interfaces
.implements Ljavax/sip/header/SubscriptionStateHeader;


# static fields
.field private static final serialVersionUID:J = -0x5c9e37cd95983a79L


# instance fields
.field protected expires:I

.field protected reasonCode:Ljava/lang/String;

.field protected retryAfter:I

.field protected state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "Subscription-State"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    iput v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SubscriptionState;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ";reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    if-eq v0, v2, :cond_2

    const-string v0, ";expires="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    if-eq v0, v2, :cond_3

    const-string v0, ";retry-after="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    return-object p1
.end method

.method public getExpires()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    return v0
.end method

.method public getReasonCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryAfter()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setExpires(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    return-void
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    return-void
.end method
