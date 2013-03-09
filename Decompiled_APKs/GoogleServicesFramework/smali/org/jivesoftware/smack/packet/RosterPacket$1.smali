.class synthetic Lorg/jivesoftware/smack/packet/RosterPacket$1;
.super Ljava/lang/Object;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->values()[Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
