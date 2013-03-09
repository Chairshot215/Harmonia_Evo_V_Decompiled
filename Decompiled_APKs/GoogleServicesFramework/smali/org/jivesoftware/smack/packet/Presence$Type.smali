.class public Lorg/jivesoftware/smack/packet/Presence$Type;
.super Ljava/lang/Object;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 432
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "available"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 433
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "unavailable"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 434
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "subscribe"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 435
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "subscribed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 436
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "unsubscribe"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 437
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "unsubscribed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 438
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "probe"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 439
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence$Type;->value:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;
    .locals 1
    .parameter "value"

    .prologue
    .line 455
    if-nez p0, :cond_0

    .line 456
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 486
    :goto_0
    return-object v0

    .line 459
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 460
    const-string v0, "available"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 463
    :cond_1
    const-string v0, "unavailable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 466
    :cond_2
    const-string v0, "subscribe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 469
    :cond_3
    const-string v0, "subscribed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 472
    :cond_4
    const-string v0, "unsubscribe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 475
    :cond_5
    const-string v0, "unsubscribed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 478
    :cond_6
    const-string v0, "probe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 481
    :cond_7
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 482
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 486
    :cond_8
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence$Type;->value:Ljava/lang/String;

    return-object v0
.end method
