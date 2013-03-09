.class public final Lcom/awox/jUPnPCP/UPnPPlayMode;
.super Ljava/lang/Object;
.source "UPnPPlayMode.java"


# static fields
.field public static final PLAYMODE_Count:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field public static final PLAYMODE_INTRO:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field public static final PLAYMODE_NORMAL:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field public static final PLAYMODE_RANDOM:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field public static final PLAYMODE_REPEAT_ALL:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field public static final PLAYMODE_REPEAT_ONE:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field public static final PLAYMODE_SHUFFLE:Lcom/awox/jUPnPCP/UPnPPlayMode;

.field private static swigNext:I

.field private static swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_NORMAL"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYMODE_NORMAL_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_NORMAL:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 13
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_REPEAT_ALL"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_REPEAT_ALL:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 14
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_REPEAT_ONE"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_REPEAT_ONE:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 15
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_RANDOM"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_RANDOM:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 16
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_SHUFFLE"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_SHUFFLE:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 17
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_INTRO"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_INTRO:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 18
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayMode;

    const-string v1, "PLAYMODE_Count"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_Count:Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/awox/jUPnPCP/UPnPPlayMode;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_NORMAL:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_REPEAT_ALL:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_REPEAT_ONE:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_RANDOM:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_SHUFFLE:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_INTRO:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayMode;->PLAYMODE_Count:Lcom/awox/jUPnPCP/UPnPPlayMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    .line 55
    sput v3, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigName:Ljava/lang/String;

    .line 39
    sget v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigNext:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigNext:I

    iput v0, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigName:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    .line 45
    add-int/lit8 v0, p2, 0x1

    sput v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigNext:I

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/awox/jUPnPCP/UPnPPlayMode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigName:Ljava/lang/String;

    .line 50
    iget v0, p2, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    iput v0, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    .line 51
    iget v0, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigNext:I

    .line 52
    return-void
.end method

.method public static swigToEnum(I)Lcom/awox/jUPnPCP/UPnPPlayMode;
    .locals 3
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    if-ne v0, p0, :cond_0

    .line 30
    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    aget-object v0, v0, p0

    .line 33
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 32
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    if-ne v1, p0, :cond_1

    .line 33
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayMode;

    aget-object v0, v1, v0

    goto :goto_0

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/awox/jUPnPCP/UPnPPlayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/awox/jUPnPCP/UPnPPlayMode;->swigName:Ljava/lang/String;

    return-object v0
.end method
