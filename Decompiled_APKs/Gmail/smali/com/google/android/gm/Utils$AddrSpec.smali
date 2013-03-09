.class Lcom/google/android/gm/Utils$AddrSpec;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddrSpec"
.end annotation


# static fields
.field private static final ATEXT_BITS:Ljava/util/BitSet;


# instance fields
.field private domain:Ljava/lang/String;

.field private localPart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x7b

    .line 2403
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 2404
    .local v0, bits:Ljava/util/BitSet;
    const/16 v1, 0x30

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 2405
    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 2406
    const/16 v1, 0x61

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(II)V

    .line 2407
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2408
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2409
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2410
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2411
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2412
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2413
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2414
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2415
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2416
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2417
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2418
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2419
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2420
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2421
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2422
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2423
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2424
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2425
    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2426
    sput-object v0, Lcom/google/android/gm/Utils$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    .line 2427
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2431
    .local v1, len:I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 2433
    iput-object p1, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    .line 2434
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    .line 2445
    :goto_0
    return-void

    .line 2436
    :cond_0
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2437
    .local v0, index:I
    if-gez v0, :cond_1

    .line 2438
    iput-object p1, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    .line 2439
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    goto :goto_0

    .line 2441
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    .line 2442
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method private isPeriod(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 2556
    const-string v0, ".\u3002\uff0e\uff61"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public validateDomain()Z
    .locals 14

    .prologue
    .line 2487
    iget-object v11, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 2488
    .local v7, len:I
    if-gtz v7, :cond_0

    .line 2489
    const/4 v11, 0x0

    .line 2552
    :goto_0
    return v11

    .line 2491
    :cond_0
    const/16 v11, 0xff

    if-le v7, v11, :cond_1

    .line 2492
    const/4 v11, 0x0

    goto :goto_0

    .line 2494
    :cond_1
    const/4 v1, 0x1

    .line 2495
    .local v1, hasUnicode:Z
    const/4 v6, -0x1

    .line 2496
    .local v6, lastPeriod:I
    const/4 v5, 0x0

    .line 2497
    .local v5, labelStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_a

    .line 2498
    iget-object v11, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2499
    .local v0, ch:C
    invoke-direct {p0, v0}, Lcom/google/android/gm/Utils$AddrSpec;->isPeriod(C)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2500
    if-eqz v2, :cond_2

    add-int/lit8 v11, v6, 0x1

    if-eq v2, v11, :cond_2

    add-int/lit8 v11, v7, -0x1

    if-eq v2, v11, :cond_2

    sub-int v11, v2, v5

    const/16 v12, 0x3f

    if-le v11, v12, :cond_3

    .line 2502
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 2504
    :cond_3
    move v6, v2

    .line 2505
    add-int/lit8 v5, v2, 0x1

    .line 2497
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2506
    :cond_5
    const/16 v11, 0x30

    if-gt v11, v0, :cond_6

    const/16 v11, 0x39

    if-le v0, v11, :cond_4

    :cond_6
    const/16 v11, 0x61

    if-gt v11, v0, :cond_7

    const/16 v11, 0x7a

    if-le v0, v11, :cond_4

    :cond_7
    const/16 v11, 0x41

    if-gt v11, v0, :cond_8

    const/16 v11, 0x5a

    if-le v0, v11, :cond_4

    :cond_8
    const/16 v11, 0x2d

    if-eq v0, v11, :cond_4

    .line 2511
    const/16 v11, 0x80

    if-ge v0, v11, :cond_9

    .line 2512
    const/4 v11, 0x0

    goto :goto_0

    .line 2514
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 2517
    .end local v0           #ch:C
    :cond_a
    if-ltz v6, :cond_f

    .line 2518
    sub-int v11, v7, v6

    add-int/lit8 v10, v11, -0x1

    .line 2524
    .local v10, tldLength:I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    const/16 v11, 0x30

    iget-object v12, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #ch:C
    if-gt v11, v0, :cond_d

    const/16 v11, 0x39

    if-gt v0, v11, :cond_d

    .line 2536
    .end local v0           #ch:C
    :cond_b
    if-eqz v1, :cond_c

    .line 2538
    :try_start_0
    iget-object v11, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2552
    :cond_c
    const/4 v11, 0x1

    goto :goto_0

    .line 2528
    :cond_d
    const/4 v11, 0x2

    if-lt v10, v11, :cond_e

    const/4 v11, 0x6

    if-le v10, v11, :cond_b

    .line 2529
    :cond_e
    const/4 v11, 0x0

    goto :goto_0

    .line 2534
    .end local v10           #tldLength:I
    :cond_f
    const/4 v11, 0x0

    goto :goto_0

    .line 2539
    .restart local v10       #tldLength:I
    :catch_0
    move-exception v3

    .line 2540
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    instance-of v11, v11, Ljava/text/ParseException;

    if-eqz v11, :cond_10

    .line 2541
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/text/ParseException;

    .line 2542
    .local v9, pe:Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v8

    .line 2543
    .local v8, offset:I
    if-ltz v8, :cond_10

    if-ge v8, v7, :cond_10

    .line 2544
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2547
    .end local v8           #offset:I
    .end local v9           #pe:Ljava/text/ParseException;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2548
    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 2549
    .local v4, ioobe:Ljava/lang/IndexOutOfBoundsException;
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public validateLocalPart()Z
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v3, 0x0

    .line 2448
    iget-object v4, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 2449
    .local v2, len:I
    if-lez v2, :cond_0

    const/16 v4, 0x3e6

    if-le v2, v4, :cond_1

    .line 2483
    :cond_0
    :goto_0
    return v3

    .line 2452
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2453
    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2456
    add-int/lit8 v2, v2, -0x1

    .line 2457
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 2458
    iget-object v4, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2459
    .local v0, ch:C
    if-eq v0, v6, :cond_0

    .line 2461
    const/16 v4, 0x5c

    if-eq v0, v4, :cond_2

    .line 2457
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2464
    :cond_2
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_0

    .line 2465
    add-int/lit8 v1, v1, 0x1

    .line 2466
    goto :goto_2

    .line 2471
    .end local v0           #ch:C
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 2472
    iget-object v4, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2473
    .restart local v0       #ch:C
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_4

    .line 2471
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2475
    :cond_4
    sget-object v4, Lcom/google/android/gm/Utils$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/google/android/gm/Utils$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    .line 2483
    .end local v0           #ch:C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
