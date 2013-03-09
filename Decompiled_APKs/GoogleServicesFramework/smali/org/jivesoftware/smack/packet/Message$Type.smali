.class public Lorg/jivesoftware/smack/packet/Message$Type;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final NORMAL:Lorg/jivesoftware/smack/packet/Message$Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "normal"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->NORMAL:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 500
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 505
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "groupchat"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 510
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "headline"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 515
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message$Type;->value:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;
    .locals 1
    .parameter "type"

    .prologue
    .line 524
    if-nez p0, :cond_0

    .line 525
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->NORMAL:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 541
    :goto_0
    return-object v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 528
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_0

    .line 531
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_0

    .line 534
    :cond_2
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_0

    .line 537
    :cond_3
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_0

    .line 541
    :cond_4
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->NORMAL:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Type;->value:Ljava/lang/String;

    return-object v0
.end method
