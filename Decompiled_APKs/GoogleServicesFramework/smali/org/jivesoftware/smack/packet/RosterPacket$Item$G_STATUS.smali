.class public final enum Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
.super Ljava/lang/Enum;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "G_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

.field public static final enum BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

.field public static final enum DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

.field public static final enum HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

.field public static final enum PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    const-string v1, "PINNED"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->$VALUES:[Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .locals 1
    .parameter

    .prologue
    .line 208
    const-class v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->$VALUES:[Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    return-object v0
.end method
