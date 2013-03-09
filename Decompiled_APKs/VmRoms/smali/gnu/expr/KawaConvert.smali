.class public Lgnu/expr/KawaConvert;
.super Lgnu/lists/Convert;
.source "KawaConvert.java"


# static fields
.field public static instance:Lgnu/lists/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lgnu/expr/KawaConvert;

    invoke-direct {v0}, Lgnu/expr/KawaConvert;-><init>()V

    sput-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/lists/Convert;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/lists/Convert;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-object v0
.end method

.method public static setInstance(Lgnu/lists/Convert;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 15
    sput-object p0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method


# virtual methods
.method public byteToObject(B)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public byteToObjectUnsigned(B)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public charToObject(C)Ljava/lang/Object;
    .locals 1
    .parameter "ch"

    .prologue
    .line 19
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public doubleToObject(D)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 74
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    return-object v0
.end method

.method public floatToObject(F)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 69
    float-to-double v0, p1

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    return-object v0
.end method

.method public intToObject(I)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public intToObjectUnsigned(I)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    .line 59
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public longToObject(J)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 44
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public longToObjectUnsigned(J)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 64
    invoke-static {p1, p2}, Lgnu/math/IntNum;->makeU(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public objectToChar(Ljava/lang/Object;)C
    .locals 1
    .parameter "obj"

    .prologue
    .line 24
    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result v0

    return v0
.end method

.method public shortToObject(S)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 34
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public shortToObjectUnsigned(S)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 54
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
