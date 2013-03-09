.class public final Lcom/coremobility/i/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/i/h;


# static fields
.field public static a:I


# instance fields
.field b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x27

    sput v0, Lcom/coremobility/i/d;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/i/d;->b:Ljava/util/Vector;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/coremobility/i/d;
    .locals 13

    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/coremobility/i/d;

    invoke-direct {v4}, Lcom/coremobility/i/d;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    const-string v2, "$."

    invoke-static {p0, v2, v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "CM+CFS fail parse type/index"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    const-string v2, "$="

    invoke-static {p0, v2, v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_1

    const-string v0, "CM+CFS fail parse type/index"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/16 v0, 0x73

    if-ne v5, v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v2, 0x2

    if-ge v0, v8, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v8, v0, v2

    if-nez v8, :cond_2

    const-string v0, "0"

    :goto_2
    invoke-static {v0, v10}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v8

    long-to-int v8, v8

    if-nez v8, :cond_4

    const-string v0, ""

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_3
    iget-object v8, v4, Lcom/coremobility/i/d;->b:Ljava/util/Vector;

    new-instance v9, Lcom/coremobility/i/e;

    invoke-static {v6}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v6

    invoke-static {v7}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v9, v5, v6, v7, v2}, Lcom/coremobility/i/e;-><init>(CIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int v0, v2, v8

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    invoke-static {v0, v10}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v8

    long-to-int v0, v8

    add-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3

    :cond_5
    const/16 v0, 0x76

    if-ne v5, v0, :cond_6

    const-string v0, "$,"

    invoke-static {p0, v0, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    :goto_4
    iget-object v8, v4, Lcom/coremobility/i/d;->b:Ljava/util/Vector;

    new-instance v9, Lcom/coremobility/i/e;

    invoke-static {v6}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v6

    invoke-static {v7}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0}, Lcom/coremobility/g/l;->b(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v9, v5, v6, v7, v0}, Lcom/coremobility/i/e;-><init>(CIII)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    add-int/2addr v2, v8

    goto :goto_4

    :cond_8
    move-object v0, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/i/d;->b:Ljava/util/Vector;

    return-object v0
.end method
