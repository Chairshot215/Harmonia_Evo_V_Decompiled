.class public final enum Lorg/jivesoftware/smack/packet/BatchPresence$Type;
.super Ljava/lang/Enum;
.source "BatchPresence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/BatchPresence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/BatchPresence$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/packet/BatchPresence$Type;

.field public static final enum GET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

.field public static final enum SET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/BatchPresence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->GET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    .line 34
    new-instance v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    const-string v1, "SET"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/BatchPresence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->SET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    sget-object v1, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->GET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->SET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->$VALUES:[Lorg/jivesoftware/smack/packet/BatchPresence$Type;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/BatchPresence$Type;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/BatchPresence$Type;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->$VALUES:[Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/BatchPresence$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    return-object v0
.end method
