.class Lgov/nist/javax/sip/EventWrapper;
.super Ljava/lang/Object;
.source "EventWrapper.java"


# instance fields
.field protected sipEvent:Ljava/util/EventObject;

.field protected transaction:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method constructor <init>(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    iput-object p2, p0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-void
.end method
