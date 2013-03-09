.class public Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;
.super Ljava/lang/Object;
.source "HandshakeCompletedListenerImpl.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field private handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

.field private tlsMessageChannel:Lgov/nist/javax/sip/stack/TLSMessageChannel;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->tlsMessageChannel:Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method


# virtual methods
.method public getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

    return-object v0
.end method

.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

    return-void
.end method
