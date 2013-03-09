.class public final Lcom/coremobility/a/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:I

.field public static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x27

    sput v0, Lcom/coremobility/a/c;->a:I

    const/4 v0, 0x5

    sput v0, Lcom/coremobility/a/c;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/coremobility/a/c;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/coremobility/a/c;->d:I

    const/16 v0, 0xe

    sput v0, Lcom/coremobility/a/c;->e:I

    const-string v0, ""

    sput-object v0, Lcom/coremobility/a/c;->f:Ljava/lang/String;

    sget-boolean v0, Lcom/coremobility/a/b;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "V"

    :goto_0
    sput-object v0, Lcom/coremobility/a/c;->g:Ljava/lang/String;

    sget-boolean v0, Lcom/coremobility/a/b;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "N"

    :goto_1
    sput-object v0, Lcom/coremobility/a/c;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/coremobility/a/c;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/coremobility/a/c;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/coremobility/a/c;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coremobility/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/a/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coremobility/a/c;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coremobility/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/a/c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/a/c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coremobility/a/c;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coremobility/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/a/c;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/a/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/a/c;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/a/c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coremobility/a/c;->n:Ljava/lang/String;

    sget v0, Lcom/coremobility/a/c;->b:I

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, 0xf

    and-int/2addr v0, v1

    sget v1, Lcom/coremobility/a/c;->c:I

    shl-int/lit8 v1, v1, 0xc

    const v2, 0xf000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    sget v1, Lcom/coremobility/a/c;->d:I

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xf00

    or-int/2addr v0, v1

    sget v1, Lcom/coremobility/a/c;->e:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    sput v0, Lcom/coremobility/a/c;->o:I

    sget v0, Lcom/coremobility/a/c;->a:I

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    sget v1, Lcom/coremobility/a/c;->e:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    sput v0, Lcom/coremobility/a/c;->p:I

    return-void

    :cond_0
    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "V"

    goto/16 :goto_0

    :cond_1
    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "T"

    goto/16 :goto_0

    :cond_2
    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "T"

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/a/c;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/coremobility/a/c;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()[I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/coremobility/a/c;->b:I

    aput v1, v0, v2

    sget v1, Lcom/coremobility/a/c;->c:I

    aput v1, v0, v3

    sget v1, Lcom/coremobility/a/c;->d:I

    aput v1, v0, v4

    const/4 v1, 0x3

    sget v2, Lcom/coremobility/a/c;->e:I

    aput v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [I

    sget v1, Lcom/coremobility/a/c;->a:I

    aput v1, v0, v2

    sget v1, Lcom/coremobility/a/c;->e:I

    aput v1, v0, v3

    goto :goto_0
.end method
