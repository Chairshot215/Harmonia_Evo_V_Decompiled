.class public final Lcom/coremobility/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/i/h;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/i/c;->a:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/i/c;->b:I

    iput v1, p0, Lcom/coremobility/i/c;->c:I

    iput v2, p0, Lcom/coremobility/i/c;->d:I

    iput p1, p0, Lcom/coremobility/i/c;->b:I

    iput-object p2, p0, Lcom/coremobility/i/c;->a:Ljava/lang/String;

    iput v2, p0, Lcom/coremobility/i/c;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/i/c;->a:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/i/c;->b:I

    iput v1, p0, Lcom/coremobility/i/c;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/i/c;->d:I

    iput p1, p0, Lcom/coremobility/i/c;->b:I

    iput-object p2, p0, Lcom/coremobility/i/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/coremobility/i/c;->c:I

    iput p4, p0, Lcom/coremobility/i/c;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/coremobility/i/h;
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v4

    if-lez v2, :cond_2

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v0, v5

    if-le v2, v0, :cond_0

    move v2, v0

    :cond_0
    new-instance v0, Lcom/coremobility/i/c;

    invoke-direct {v0, v2, v3}, Lcom/coremobility/i/c;-><init>(ILjava/lang/String;)V

    iput v4, v0, Lcom/coremobility/i/c;->c:I

    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    move-object v3, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x21

    const-string v3, "deliveryTime %d, delay %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v0, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method
