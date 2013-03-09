.class public final Lcom/coremobility/k/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/BitSet;


# instance fields
.field private b:Lcom/coremobility/k/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/a;->b:Lcom/coremobility/k/cx;

    return-void
.end method

.method static a(I)V
    .locals 1

    sget-object v0, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/coremobility/k/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()I
    .locals 3

    const v2, 0xffff

    const/4 v0, 0x1

    sget-object v1, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    if-gt v1, v2, :cond_0

    sget-object v0, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ge v1, v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, "VN-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    :cond_1
    if-lez v3, :cond_2

    if-lez v4, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File name format is not VN-XXXX.XXX "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File name format is not Hex numeric "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0
.end method

.method static b(I)Z
    .locals 1

    const v0, 0xffff

    if-le p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->clear(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    iget-object v2, p0, Lcom/coremobility/k/a;->b:Lcom/coremobility/k/cx;

    iget-object v2, v2, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/k/a;->b:Lcom/coremobility/k/cx;

    iget-object v2, v2, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "filename_only"

    aput-object v3, v2, v1

    const-string v3, "filename_only ASC"

    iget-object v4, p0, Lcom/coremobility/k/a;->b:Lcom/coremobility/k/cx;

    iget-object v4, v4, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes_mime"

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v4

    move v2, v0

    :goto_2
    if-gt v2, v4, :cond_5

    invoke-virtual {v3, v1}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/coremobility/k/a;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->d()Z

    if-lez v5, :cond_4

    const v6, 0xffff

    if-gt v5, v6, :cond_4

    sget-object v6, Lcom/coremobility/k/a;->a:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_1
.end method
