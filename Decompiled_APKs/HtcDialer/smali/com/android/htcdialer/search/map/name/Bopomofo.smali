.class public Lcom/android/htcdialer/search/map/name/Bopomofo;
.super Ljava/lang/Object;
.source "Bopomofo.java"


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
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    .line 11
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [C

    fill-array-data v2, :array_8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [C

    fill-array-data v2, :array_a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void

    .line 11
    nop

    :array_0
    .array-data 0x2
        0x5t 0x31t
        0x9t 0x31t
        0x1at 0x31t
    .end array-data

    .line 14
    nop

    :array_1
    .array-data 0x2
        0xdt 0x31t
        0x10t 0x31t
        0x1et 0x31t
    .end array-data

    .line 17
    nop

    :array_2
    .array-data 0x2
        0x13t 0x31t
        0x17t 0x31t
        0x22t 0x31t
        0x26t 0x31t
    .end array-data

    .line 20
    :array_3
    .array-data 0x2
        0x6t 0x31t
        0xat 0x31t
        0x1bt 0x31t
    .end array-data

    .line 23
    nop

    :array_4
    .array-data 0x2
        0xet 0x31t
        0x11t 0x31t
        0x1ft 0x31t
    .end array-data

    .line 26
    nop

    :array_5
    .array-data 0x2
        0x14t 0x31t
        0x18t 0x31t
        0x23t 0x31t
        0x27t 0x31t
    .end array-data

    .line 29
    :array_6
    .array-data 0x2
        0x7t 0x31t
        0xbt 0x31t
        0x1ct 0x31t
    .end array-data

    .line 32
    nop

    :array_7
    .array-data 0x2
        0xft 0x31t
        0x12t 0x31t
        0x20t 0x31t
        0x21t 0x31t
    .end array-data

    .line 35
    :array_8
    .array-data 0x2
        0x15t 0x31t
        0x19t 0x31t
        0x24t 0x31t
        0x28t 0x31t
    .end array-data

    .line 38
    :array_9
    .array-data 0x2
        0x8t 0x31t
        0xct 0x31t
        0x1dt 0x31t
    .end array-data

    .line 41
    nop

    :array_a
    .array-data 0x2
        0x16t 0x31t
        0x25t 0x31t
        0x29t 0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
