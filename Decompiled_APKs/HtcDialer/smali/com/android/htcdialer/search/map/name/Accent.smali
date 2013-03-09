.class public Lcom/android/htcdialer/search/map/name/Accent;
.super Ljava/lang/Object;
.source "Accent.java"


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
    const/16 v7, 0x10

    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x6

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    .line 11
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [C

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [C

    fill-array-data v2, :array_8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [C

    fill-array-data v2, :array_a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    fill-array-data v2, :array_b

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [C

    fill-array-data v2, :array_c

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_d

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_f

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [C

    fill-array-data v2, :array_10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [C

    fill-array-data v2, :array_12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [C

    fill-array-data v2, :array_14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 11
    nop

    :array_0
    .array-data 0x2
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0x4t 0x1t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0x5t 0x1t
        0xc7t 0x0t
        0x6t 0x1t
        0xct 0x1t
        0xe7t 0x0t
        0x7t 0x1t
        0xdt 0x1t
    .end array-data

    .line 16
    :array_1
    .array-data 0x2
        0xet 0x1t
        0xft 0x1t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0x18t 0x1t
        0x1at 0x1t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0x19t 0x1t
        0x1bt 0x1t
    .end array-data

    .line 20
    :array_2
    .array-data 0x2
        0x1et 0x1t
        0x1ft 0x1t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0x30t 0x1t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0x31t 0x1t
    .end array-data

    .line 24
    :array_3
    .array-data 0x2
        0x3bt 0x1t
        0x3ft 0x1t
        0x41t 0x1t
        0x3at 0x1t
        0x3et 0x1t
        0x42t 0x1t
    .end array-data

    .line 27
    :array_4
    .array-data 0x2
        0xd1t 0x0t
        0x43t 0x1t
        0x47t 0x1t
        0xf1t 0x0t
        0x44t 0x1t
        0x48t 0x1t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0x50t 0x1t
        0x52t 0x1t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf8t 0x0t
        0x51t 0x1t
        0x53t 0x1t
    .end array-data

    .line 32
    :array_5
    .array-data 0x2
        0x56t 0x1t
        0x58t 0x1t
        0x55t 0x1t
        0x59t 0x1t
        0x5at 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0xdft 0x0t
        0x5bt 0x1t
        0x5ft 0x1t
        0x61t 0x1t
    .end array-data

    .line 36
    nop

    :array_6
    .array-data 0x2
        0x62t 0x1t
        0x64t 0x1t
        0x63t 0x1t
        0x65t 0x1t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0x6et 0x1t
        0x70t 0x1t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0x6ft 0x1t
        0x71t 0x1t
    .end array-data

    .line 40
    :array_7
    .array-data 0x2
        0xddt 0x0t
        0x78t 0x1t
        0xfdt 0x0t
        0xfft 0x0t
        0x79t 0x1t
        0x7bt 0x1t
        0x7dt 0x1t
        0x7at 0x1t
        0x7ct 0x1t
        0x7et 0x1t
    .end array-data

    .line 44
    :array_8
    .array-data 0x2
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0x4t 0x1t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0x5t 0x1t
    .end array-data

    .line 48
    :array_9
    .array-data 0x2
        0xc7t 0x0t
        0x6t 0x1t
        0xct 0x1t
        0xe7t 0x0t
        0x7t 0x1t
        0xdt 0x1t
    .end array-data

    .line 51
    :array_a
    .array-data 0x2
        0xet 0x1t
        0xft 0x1t
    .end array-data

    .line 54
    :array_b
    .array-data 0x2
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0x18t 0x1t
        0x1at 0x1t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0x19t 0x1t
        0x1bt 0x1t
    .end array-data

    .line 58
    :array_c
    .array-data 0x2
        0x1et 0x1t
        0x1ft 0x1t
    .end array-data

    .line 61
    :array_d
    .array-data 0x2
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0x30t 0x1t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0x31t 0x1t
    .end array-data

    .line 64
    :array_e
    .array-data 0x2
        0x3bt 0x1t
        0x3ft 0x1t
        0x41t 0x1t
        0x3at 0x1t
        0x3et 0x1t
        0x42t 0x1t
    .end array-data

    .line 67
    :array_f
    .array-data 0x2
        0xd1t 0x0t
        0x43t 0x1t
        0x47t 0x1t
        0xf1t 0x0t
        0x44t 0x1t
        0x48t 0x1t
    .end array-data

    .line 70
    :array_10
    .array-data 0x2
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0x50t 0x1t
        0x52t 0x1t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf8t 0x0t
        0x51t 0x1t
        0x53t 0x1t
    .end array-data

    .line 74
    :array_11
    .array-data 0x2
        0x56t 0x1t
        0x58t 0x1t
        0x55t 0x1t
        0x59t 0x1t
    .end array-data

    .line 77
    :array_12
    .array-data 0x2
        0x5at 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0xdft 0x0t
        0x5bt 0x1t
        0x5ft 0x1t
        0x61t 0x1t
    .end array-data

    .line 80
    nop

    :array_13
    .array-data 0x2
        0x62t 0x1t
        0x64t 0x1t
        0x63t 0x1t
        0x65t 0x1t
    .end array-data

    .line 83
    :array_14
    .array-data 0x2
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0x6et 0x1t
        0x70t 0x1t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0x6ft 0x1t
        0x71t 0x1t
    .end array-data

    .line 87
    :array_15
    .array-data 0x2
        0xddt 0x0t
        0x78t 0x1t
        0xfdt 0x0t
        0xfft 0x0t
    .end array-data

    .line 90
    :array_16
    .array-data 0x2
        0x79t 0x1t
        0x7bt 0x1t
        0x7dt 0x1t
        0x7at 0x1t
        0x7ct 0x1t
        0x7et 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
