.class public Ljavax/sip/IOExceptionEvent;
.super Ljava/util/EventObject;
.source "IOExceptionEvent.java"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPort:I

.field private mTransport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    iput p3, p0, Ljavax/sip/IOExceptionEvent;->mPort:I

    iput-object p4, p0, Ljavax/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ljavax/sip/IOExceptionEvent;->mPort:I

    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    return-object v0
.end method
