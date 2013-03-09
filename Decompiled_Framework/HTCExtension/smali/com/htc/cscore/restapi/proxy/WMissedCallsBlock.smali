.class public Lcom/htc/cscore/restapi/proxy/WMissedCallsBlock;
.super Ljava/lang/Object;
.source "WMissedCallsBlock.java"


# instance fields
.field public Contact:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;

.field public MissedCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceMissedCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceMissedCall;",
            ">;",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/WMissedCallsBlock;->MissedCalls:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/htc/cscore/restapi/proxy/WMissedCallsBlock;->Contact:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;

    return-void
.end method
