.class public final Lcom/coremobility/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->g:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/coremobility/a/a;->a:Z

    sget-boolean v0, Lcom/coremobility/a/b;->a:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/coremobility/a/a;->b:Z

    sget-boolean v0, Lcom/coremobility/a/b;->a:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/coremobility/a/a;->c:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_8

    :cond_0
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/coremobility/a/a;->d:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_9

    :cond_1
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/coremobility/a/a;->e:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_a

    :cond_2
    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/coremobility/a/a;->f:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_b

    :cond_3
    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/coremobility/a/a;->g:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_c

    :cond_4
    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/coremobility/a/a;->h:Z

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/coremobility/a/a;->i:Z

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_e

    :goto_9
    sput-boolean v1, Lcom/coremobility/a/a;->j:Z

    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v2

    goto :goto_7

    :cond_d
    move v0, v2

    goto :goto_8

    :cond_e
    move v1, v2

    goto :goto_9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
