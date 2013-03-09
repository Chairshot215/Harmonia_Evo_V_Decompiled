.class public Leu/chainfire/supersu/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3e9

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x3ea

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3eb

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3ec

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3ed

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x3ee

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3ef

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3f0

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3f1

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3f2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3f3

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3f4

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3f5

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3f6

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x7d0

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x7d1

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x7d2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xbb9

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xbba

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xbbb

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xbbc

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x270e

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x270f

    aput v2, v0, v1

    sput-object v0, Leu/chainfire/supersu/Constants;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "prompt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "grant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "ROOT"

    goto :goto_0

    :sswitch_1
    const-string v0, "SYSTEM"

    goto :goto_0

    :sswitch_2
    const-string v0, "RADIO"

    goto :goto_0

    :sswitch_3
    const-string v0, "BLUETOOTH"

    goto :goto_0

    :sswitch_4
    const-string v0, "GRAPHICS"

    goto :goto_0

    :sswitch_5
    const-string v0, "INPUT"

    goto :goto_0

    :sswitch_6
    const-string v0, "AUDIO"

    goto :goto_0

    :sswitch_7
    const-string v0, "CAMERA"

    goto :goto_0

    :sswitch_8
    const-string v0, "LOG"

    goto :goto_0

    :sswitch_9
    const-string v0, "COMPASS"

    goto :goto_0

    :sswitch_a
    const-string v0, "MOUNT"

    goto :goto_0

    :sswitch_b
    const-string v0, "WIFI"

    goto :goto_0

    :sswitch_c
    const-string v0, "ADB"

    goto :goto_0

    :sswitch_d
    const-string v0, "INSTALL"

    goto :goto_0

    :sswitch_e
    const-string v0, "MEDIA"

    goto :goto_0

    :sswitch_f
    const-string v0, "DHCP"

    goto :goto_0

    :sswitch_10
    const-string v0, "SHELL"

    goto :goto_0

    :sswitch_11
    const-string v0, "CACHE"

    goto :goto_0

    :sswitch_12
    const-string v0, "DIAG"

    goto :goto_0

    :sswitch_13
    const-string v0, "NET_BT_ADMIN"

    goto :goto_0

    :sswitch_14
    const-string v0, "NET_BT"

    goto :goto_0

    :sswitch_15
    const-string v0, "INET"

    goto :goto_0

    :sswitch_16
    const-string v0, "NET_RAW"

    goto :goto_0

    :sswitch_17
    const-string v0, "MISC"

    goto :goto_0

    :sswitch_18
    const-string v0, "NOBODY"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_f
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_11
        0x7d2 -> :sswitch_12
        0xbb9 -> :sswitch_13
        0xbba -> :sswitch_14
        0xbbb -> :sswitch_15
        0xbbc -> :sswitch_16
        0x270e -> :sswitch_17
        0x270f -> :sswitch_18
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "parent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "prompt"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "grant"

    goto :goto_0

    :cond_2
    const-string v0, "deny"

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "parent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "yes"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "parent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "content"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "access"

    goto :goto_0

    :cond_2
    const-string v0, "none"

    goto :goto_0
.end method
