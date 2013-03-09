.class public Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;
.super Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialConnectionEvent"
.end annotation


# instance fields
.field private mEventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1618
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;-><init>()V

    .line 1619
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;->mEventType:I

    .line 1620
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 1624
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1626
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    .line 1647
    :goto_0
    return-void

    .line 1628
    :pswitch_0
    const-string v0, "HEARTBEAT TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    :pswitch_1
    const-string v0, "IM LOGIN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1636
    :pswitch_2
    const-string v0, "IM LOGOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :pswitch_3
    const-string v0, "LOGIN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    :pswitch_4
    const-string v0, "LOGOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
