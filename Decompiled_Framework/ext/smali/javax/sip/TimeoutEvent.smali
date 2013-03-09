.class public Ljavax/sip/TimeoutEvent;
.super Ljavax/sip/TransactionTerminatedEvent;
.source "TimeoutEvent.java"


# instance fields
.field private mTimeout:Ljavax/sip/Timeout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    iput-object p3, p0, Ljavax/sip/TimeoutEvent;->mTimeout:Ljavax/sip/Timeout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    iput-object p3, p0, Ljavax/sip/TimeoutEvent;->mTimeout:Ljavax/sip/Timeout;

    return-void
.end method


# virtual methods
.method public getTimeout()Ljavax/sip/Timeout;
    .locals 1

    iget-object v0, p0, Ljavax/sip/TimeoutEvent;->mTimeout:Ljavax/sip/Timeout;

    return-object v0
.end method
