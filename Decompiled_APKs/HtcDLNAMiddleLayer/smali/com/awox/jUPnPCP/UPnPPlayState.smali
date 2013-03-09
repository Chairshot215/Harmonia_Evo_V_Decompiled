.class public final Lcom/awox/jUPnPCP/UPnPPlayState;
.super Ljava/lang/Object;
.source "UPnPPlayState.java"


# static fields
.field public static final PLAYSTATE_Count:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_NO_MEDIA:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_PAUSED:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_PAUSED_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;

.field public static final PLAYSTATE_UNKNOWN:Lcom/awox/jUPnPCP/UPnPPlayState;

.field private static swigNext:I

.field private static swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_PLAYING"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_PLAYING_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 13
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_STOPPED"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_STOPPED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 14
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_PAUSED"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_PAUSED_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 15
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_PAUSED_RECORDING"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_PAUSED_RECORDING_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 16
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_RECORDING"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_RECORDING_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 17
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_TRANSITIONING"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_TRANSITIONING_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 18
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_NO_MEDIA"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_NO_MEDIA_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_NO_MEDIA:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 19
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_UNKNOWN"

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PLAYSTATE_UNKNOWN_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_UNKNOWN:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 20
    new-instance v0, Lcom/awox/jUPnPCP/UPnPPlayState;

    const-string v1, "PLAYSTATE_Count"

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPPlayState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_Count:Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_RECORDING:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_NO_MEDIA:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_UNKNOWN:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_Count:Lcom/awox/jUPnPCP/UPnPPlayState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    .line 57
    sput v3, Lcom/awox/jUPnPCP/UPnPPlayState;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigName:Ljava/lang/String;

    .line 41
    sget v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigNext:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/awox/jUPnPCP/UPnPPlayState;->swigNext:I

    iput v0, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    .line 47
    add-int/lit8 v0, p2, 0x1

    sput v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigNext:I

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/awox/jUPnPCP/UPnPPlayState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigName:Ljava/lang/String;

    .line 52
    iget v0, p2, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    iput v0, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    .line 53
    iget v0, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigNext:I

    .line 54
    return-void
.end method

.method public static swigToEnum(I)Lcom/awox/jUPnPCP/UPnPPlayState;
    .locals 3
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    if-ne v0, p0, :cond_0

    .line 32
    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    aget-object v0, v0, p0

    .line 35
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 34
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    if-ne v1, p0, :cond_1

    .line 35
    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValues:[Lcom/awox/jUPnPCP/UPnPPlayState;

    aget-object v0, v1, v0

    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/awox/jUPnPCP/UPnPPlayState;

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
    .line 23
    iget v0, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/awox/jUPnPCP/UPnPPlayState;->swigName:Ljava/lang/String;

    return-object v0
.end method
