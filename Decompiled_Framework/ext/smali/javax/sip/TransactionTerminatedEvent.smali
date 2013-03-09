.class public Ljavax/sip/TransactionTerminatedEvent;
.super Ljava/util/EventObject;
.source "TransactionTerminatedEvent.java"


# instance fields
.field private mClientTransaction:Ljavax/sip/ClientTransaction;

.field private mIsServerTransaction:Z

.field private mServerTransaction:Ljavax/sip/ServerTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/sip/TransactionTerminatedEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/sip/TransactionTerminatedEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    return-void
.end method


# virtual methods
.method public getClientTransaction()Ljavax/sip/ClientTransaction;
    .locals 1

    iget-object v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    return-object v0
.end method

.method public getServerTransaction()Ljavax/sip/ServerTransaction;
    .locals 1

    iget-object v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    return-object v0
.end method

.method public isServerTransaction()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    return v0
.end method
