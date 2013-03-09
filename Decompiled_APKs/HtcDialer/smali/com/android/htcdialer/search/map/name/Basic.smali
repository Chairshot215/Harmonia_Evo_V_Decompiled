.class public Lcom/android/htcdialer/search/map/name/Basic;
.super Ljava/lang/Object;
.source "Basic.java"


# static fields
.field public static final MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v3, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    .line 11
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [C

    fill-array-data v2, :array_7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [C

    fill-array-data v2, :array_9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x2a

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x23

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_b

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_c

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x30

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x31

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x32

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x33

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x34

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x35

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x36

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x37

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x38

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x39

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_d

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_f

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_1a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_1b

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_1c

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_1d

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_1e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_1f

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x40

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x2a

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x23

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x2b

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    const/16 v3, 0x2c

    aput-char v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void

    .line 11
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x2bt 0x0t
    .end array-data

    .line 14
    :array_1
    .array-data 0x2
        0x31t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x5ct 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
    .end array-data

    .line 19
    nop

    :array_2
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
    .end array-data

    .line 22
    nop

    :array_3
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    .line 25
    nop

    :array_4
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
    .end array-data

    .line 28
    nop

    :array_5
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
    .end array-data

    .line 31
    nop

    :array_6
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
    .end array-data

    .line 34
    nop

    :array_7
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
    .end array-data

    .line 37
    nop

    :array_8
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
    .end array-data

    .line 40
    nop

    :array_9
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    .line 49
    nop

    :array_a
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    .line 52
    :array_b
    .array-data 0x2
        0x50t 0x0t
        0x70t 0x0t
    .end array-data

    .line 55
    :array_c
    .array-data 0x2
        0x57t 0x0t
        0x77t 0x0t
    .end array-data

    .line 89
    :array_d
    .array-data 0x2
        0x41t 0x0t
        0x61t 0x0t
    .end array-data

    .line 92
    :array_e
    .array-data 0x2
        0x42t 0x0t
        0x62t 0x0t
    .end array-data

    .line 95
    :array_f
    .array-data 0x2
        0x43t 0x0t
        0x63t 0x0t
    .end array-data

    .line 98
    :array_10
    .array-data 0x2
        0x44t 0x0t
        0x64t 0x0t
    .end array-data

    .line 101
    :array_11
    .array-data 0x2
        0x45t 0x0t
        0x65t 0x0t
    .end array-data

    .line 104
    :array_12
    .array-data 0x2
        0x46t 0x0t
        0x66t 0x0t
    .end array-data

    .line 107
    :array_13
    .array-data 0x2
        0x47t 0x0t
        0x67t 0x0t
    .end array-data

    .line 110
    :array_14
    .array-data 0x2
        0x48t 0x0t
        0x68t 0x0t
    .end array-data

    .line 113
    :array_15
    .array-data 0x2
        0x49t 0x0t
        0x69t 0x0t
    .end array-data

    .line 116
    :array_16
    .array-data 0x2
        0x4at 0x0t
        0x6at 0x0t
    .end array-data

    .line 119
    :array_17
    .array-data 0x2
        0x4bt 0x0t
        0x6bt 0x0t
    .end array-data

    .line 122
    :array_18
    .array-data 0x2
        0x4ct 0x0t
        0x6ct 0x0t
    .end array-data

    .line 125
    :array_19
    .array-data 0x2
        0x4dt 0x0t
        0x6dt 0x0t
    .end array-data

    .line 128
    :array_1a
    .array-data 0x2
        0x4et 0x0t
        0x6et 0x0t
    .end array-data

    .line 131
    :array_1b
    .array-data 0x2
        0x4ft 0x0t
        0x6ft 0x0t
    .end array-data

    .line 134
    :array_1c
    .array-data 0x2
        0x50t 0x0t
        0x70t 0x0t
    .end array-data

    .line 137
    :array_1d
    .array-data 0x2
        0x51t 0x0t
        0x71t 0x0t
    .end array-data

    .line 140
    :array_1e
    .array-data 0x2
        0x52t 0x0t
        0x72t 0x0t
    .end array-data

    .line 143
    :array_1f
    .array-data 0x2
        0x53t 0x0t
        0x73t 0x0t
    .end array-data

    .line 146
    :array_20
    .array-data 0x2
        0x54t 0x0t
        0x74t 0x0t
    .end array-data

    .line 149
    :array_21
    .array-data 0x2
        0x55t 0x0t
        0x75t 0x0t
    .end array-data

    .line 152
    :array_22
    .array-data 0x2
        0x56t 0x0t
        0x76t 0x0t
    .end array-data

    .line 155
    :array_23
    .array-data 0x2
        0x57t 0x0t
        0x77t 0x0t
    .end array-data

    .line 158
    :array_24
    .array-data 0x2
        0x58t 0x0t
        0x78t 0x0t
    .end array-data

    .line 161
    :array_25
    .array-data 0x2
        0x59t 0x0t
        0x79t 0x0t
    .end array-data

    .line 164
    :array_26
    .array-data 0x2
        0x5at 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
