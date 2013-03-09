.class public Lorg/jivesoftware/smack/filter/AccountIdFilter;
.super Ljava/lang/Object;
.source "AccountIdFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private accountId:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-wide p1, p0, Lorg/jivesoftware/smack/filter/AccountIdFilter;->accountId:J

    .line 22
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 5
    .parameter "packet"

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jivesoftware/smack/filter/AccountIdFilter;->accountId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method
