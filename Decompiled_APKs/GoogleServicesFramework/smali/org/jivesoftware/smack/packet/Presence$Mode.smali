.class public Lorg/jivesoftware/smack/packet/Presence$Mode;
.super Ljava/lang/Object;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# static fields
.field public static final AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final CHAT:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 501
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "available"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 502
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->CHAT:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 503
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "away"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 504
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "xa"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 505
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "dnd"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence$Mode;->value:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1
    .parameter "value"

    .prologue
    .line 524
    if-nez p0, :cond_0

    .line 525
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 551
    :goto_0
    return-object v0

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 530
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 533
    :cond_1
    const-string v0, "away"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 536
    :cond_2
    const-string v0, "xa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 539
    :cond_3
    const-string v0, "dnd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 542
    :cond_4
    const-string v0, "chat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 543
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->CHAT:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0

    .line 551
    :cond_5
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence$Mode;->value:Ljava/lang/String;

    return-object v0
.end method
