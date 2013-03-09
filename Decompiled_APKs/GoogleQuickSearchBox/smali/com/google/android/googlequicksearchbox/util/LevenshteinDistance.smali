.class public Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;
.super Ljava/lang/Object;
.source "LevenshteinDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;,
        Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;
    }
.end annotation


# instance fields
.field private final mDistanceTable:[[I

.field private final mEditTypeTable:[[I

.field private final mSource:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

.field private final mTarget:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;


# direct methods
.method public constructor <init>([Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;)V
    .locals 8
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    array-length v3, p1

    .line 40
    .local v3, sourceSize:I
    array-length v4, p2

    .line 41
    .local v4, targetSize:I
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 42
    .local v1, editTab:[[I
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 43
    .local v0, distTab:[[I
    aget-object v5, v1, v7

    const/4 v6, 0x3

    aput v6, v5, v7

    .line 44
    aget-object v5, v0, v7

    aput v7, v5, v7

    .line 45
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 46
    aget-object v5, v1, v2

    aput v7, v5, v7

    .line 47
    aget-object v5, v0, v2

    aput v2, v5, v7

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-gt v2, v4, :cond_1

    .line 50
    aget-object v5, v1, v7

    const/4 v6, 0x1

    aput v6, v5, v2

    .line 51
    aget-object v5, v0, v7

    aput v2, v5, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_1
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mEditTypeTable:[[I

    .line 54
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mDistanceTable:[[I

    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mSource:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    .line 56
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mTarget:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    .line 57
    return-void
.end method


# virtual methods
.method public calculate()I
    .locals 17

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mSource:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    .line 66
    .local v9, src:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mTarget:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    .line 67
    .local v13, trg:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    array-length v7, v9

    .line 68
    .local v7, sourceLen:I
    array-length v11, v13

    .line 69
    .local v11, targetLen:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mDistanceTable:[[I

    .line 70
    .local v3, distTab:[[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mEditTypeTable:[[I

    .line 71
    .local v5, editTab:[[I
    const/4 v6, 0x1

    .local v6, s:I
    :goto_0
    if-gt v6, v7, :cond_5

    .line 72
    add-int/lit8 v15, v6, -0x1

    aget-object v8, v9, v15

    .line 73
    .local v8, sourceToken:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    const/4 v10, 0x1

    .local v10, t:I
    :goto_1
    if-gt v10, v11, :cond_4

    .line 74
    add-int/lit8 v15, v10, -0x1

    aget-object v12, v13, v15

    .line 75
    .local v12, targetToken:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    invoke-virtual {v8, v12}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->prefixOf(Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v1, 0x0

    .line 77
    .local v1, cost:I
    :goto_2
    add-int/lit8 v15, v6, -0x1

    aget-object v15, v3, v15

    aget v15, v15, v10

    add-int/lit8 v4, v15, 0x1

    .line 78
    .local v4, distance:I
    const/4 v14, 0x0

    .line 80
    .local v14, type:I
    aget-object v15, v3, v6

    add-int/lit8 v16, v10, -0x1

    aget v2, v15, v16

    .line 81
    .local v2, d:I
    add-int/lit8 v15, v2, 0x1

    if-ge v15, v4, :cond_0

    .line 82
    add-int/lit8 v4, v2, 0x1

    .line 83
    const/4 v14, 0x1

    .line 86
    :cond_0
    add-int/lit8 v15, v6, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v10, -0x1

    aget v2, v15, v16

    .line 87
    add-int v15, v2, v1

    if-ge v15, v4, :cond_1

    .line 88
    add-int v4, v2, v1

    .line 89
    if-nez v1, :cond_3

    const/4 v14, 0x3

    .line 91
    :cond_1
    :goto_3
    aget-object v15, v3, v6

    aput v4, v15, v10

    .line 92
    aget-object v15, v5, v6

    aput v14, v15, v10

    .line 73
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 75
    .end local v1           #cost:I
    .end local v2           #d:I
    .end local v4           #distance:I
    .end local v14           #type:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 89
    .restart local v1       #cost:I
    .restart local v2       #d:I
    .restart local v4       #distance:I
    .restart local v14       #type:I
    :cond_3
    const/4 v14, 0x2

    goto :goto_3

    .line 71
    .end local v1           #cost:I
    .end local v2           #d:I
    .end local v4           #distance:I
    .end local v12           #targetToken:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    .end local v14           #type:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    .end local v8           #sourceToken:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    .end local v10           #t:I
    :cond_5
    aget-object v15, v3, v7

    aget v15, v15, v11

    return v15
.end method

.method public getTargetOperations()[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;
    .locals 7

    .prologue
    .line 107
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mTarget:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    array-length v5, v6

    .line 108
    .local v5, trgLen:I
    new-array v2, v5, [Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;

    .line 109
    .local v2, ops:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;
    move v4, v5

    .line 110
    .local v4, targetPos:I
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mSource:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    array-length v3, v6

    .line 111
    .local v3, sourcePos:I
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->mEditTypeTable:[[I

    .line 112
    .local v0, editTab:[[I
    :goto_0
    if-lez v4, :cond_0

    .line 113
    aget-object v6, v0, v3

    aget v1, v6, v4

    .line 114
    .local v1, editType:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    add-int/lit8 v4, v4, -0x1

    .line 120
    new-instance v6, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;

    invoke-direct {v6, v1, v3}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;-><init>(II)V

    aput-object v6, v2, v4

    goto :goto_0

    .line 124
    :pswitch_2
    add-int/lit8 v4, v4, -0x1

    .line 125
    add-int/lit8 v3, v3, -0x1

    .line 126
    new-instance v6, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;

    invoke-direct {v6, v1, v3}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;-><init>(II)V

    aput-object v6, v2, v4

    goto :goto_0

    .line 131
    .end local v1           #editType:I
    :cond_0
    return-object v2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
