.class public Leu/chainfire/supersu/Logs$Log;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Ljava/util/Calendar;

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field final synthetic o:Leu/chainfire/supersu/Logs;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/Logs;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Leu/chainfire/supersu/Logs$Log;->o:Leu/chainfire/supersu/Logs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    const/16 v0, 0x76c

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->c:I

    iput v2, p0, Leu/chainfire/supersu/Logs$Log;->d:I

    iput v2, p0, Leu/chainfire/supersu/Logs$Log;->e:I

    iput v1, p0, Leu/chainfire/supersu/Logs$Log;->f:I

    iput v1, p0, Leu/chainfire/supersu/Logs$Log;->g:I

    iput v1, p0, Leu/chainfire/supersu/Logs$Log;->h:I

    iput v1, p0, Leu/chainfire/supersu/Logs$Log;->i:I

    iput v1, p0, Leu/chainfire/supersu/Logs$Log;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->k:Ljava/util/Calendar;

    const/4 v0, 0x2

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->l:I

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "31122359"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "31121159PM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "%02d/%02d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Leu/chainfire/supersu/Logs$Log;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Leu/chainfire/supersu/Logs$Log;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%02d/%02d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Leu/chainfire/supersu/Logs$Log;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Leu/chainfire/supersu/Logs$Log;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "31122359"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "12312359"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "%02d:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Leu/chainfire/supersu/Logs$Log;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Leu/chainfire/supersu/Logs$Log;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "AM"

    iget v0, p0, Leu/chainfire/supersu/Logs$Log;->f:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const-string v1, "PM"

    :cond_2
    const/16 v2, 0xd

    if-lt v0, v2, :cond_3

    add-int/lit8 v0, v0, -0xc

    :cond_3
    const-string v2, "%02d:%02d %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget v0, p0, Leu/chainfire/supersu/Logs$Log;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
