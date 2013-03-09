.class public final enum Lcom/htc/xps/pomelo/log/LogLib$SendResult;
.super Ljava/lang/Enum;
.source "LogLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/LogLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/xps/pomelo/log/LogLib$SendResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/xps/pomelo/log/LogLib$SendResult;

.field public static final enum CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

.field public static final enum INNEREXCEPTION:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

.field public static final enum INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

.field public static final enum NOTFOUND:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

.field public static final enum SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    const-string v1, "SUCCESS"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    const-string v1, "NOTFOUND"

    const/16 v2, 0x194

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->NOTFOUND:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    const-string v1, "CONNECTFAILED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    const-string v1, "INNEREXCEPTION"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INNEREXCEPTION:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    const-string v1, "INVALIDPARAM"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    sget-object v1, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->NOTFOUND:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INNEREXCEPTION:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->$VALUES:[Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "a"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->value:I

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/LogLib$SendResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    return-object v0
.end method

.method public static values()[Lcom/htc/xps/pomelo/log/LogLib$SendResult;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->$VALUES:[Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v0}, [Lcom/htc/xps/pomelo/log/LogLib$SendResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->value:I

    return v0
.end method
