.class public final Lcom/coremobility/k/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/g/h;
.implements Lcom/coremobility/integration/b/e;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field protected static k:I

.field protected static l:I

.field protected static m:I

.field public static r:Ljava/lang/Object;

.field protected static v:Lcom/coremobility/k/cx;


# instance fields
.field private A:Lcom/coremobility/integration/b/b;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field protected c:Lcom/coremobility/integration/k;

.field protected d:Lcom/coremobility/g/b;

.field protected e:Lcom/coremobility/integration/file/a;

.field protected f:Lcom/coremobility/k/df;

.field protected g:Lcom/coremobility/k/cv;

.field protected h:Lcom/coremobility/k/cz;

.field protected i:Lcom/coremobility/k/cy;

.field protected j:Z

.field protected n:I

.field protected o:I

.field protected p:Ljava/util/Vector;

.field protected q:Lcom/coremobility/k/a;

.field s:Lcom/coremobility/k/g;

.field t:J

.field public u:Lcom/coremobility/integration/b/d;

.field w:Lcom/coremobility/g/j;

.field x:Lcom/coremobility/k/cx;

.field private y:Lcom/coremobility/k/dg;

.field private z:Lcom/coremobility/integration/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Welcome to Voicemail"

    sput-object v0, Lcom/coremobility/k/cx;->a:Ljava/lang/String;

    const-string v0, "About Voicemail-to-Text"

    sput-object v0, Lcom/coremobility/k/cx;->b:Ljava/lang/String;

    sput v1, Lcom/coremobility/k/cx;->k:I

    sput v1, Lcom/coremobility/k/cx;->l:I

    sput v1, Lcom/coremobility/k/cx;->m:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coremobility/k/cx;->r:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/k/cx;->v:Lcom/coremobility/k/cx;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    iput-object v2, p0, Lcom/coremobility/k/cx;->q:Lcom/coremobility/k/a;

    iput-object v2, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    iput-object v2, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    iput-boolean v0, p0, Lcom/coremobility/k/cx;->B:Z

    iput-boolean v0, p0, Lcom/coremobility/k/cx;->C:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/k/cx;->t:J

    iput-object v2, p0, Lcom/coremobility/k/cx;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    return-void
.end method

.method public static a()Lcom/coremobility/k/cx;
    .locals 3

    sget-object v0, Lcom/coremobility/k/cx;->v:Lcom/coremobility/k/cx;

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    const-string v1, "VNS Creating CM_VnotesService instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/k/cx;

    invoke-direct {v0}, Lcom/coremobility/k/cx;-><init>()V

    sput-object v0, Lcom/coremobility/k/cx;->v:Lcom/coremobility/k/cx;

    :cond_0
    sget-object v0, Lcom/coremobility/k/cx;->v:Lcom/coremobility/k/cx;

    return-object v0
.end method

.method public static a(JLcom/coremobility/integration/h/c;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x1c

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/coremobility/k/cx;->c(Lcom/coremobility/integration/h/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, " VNS err get next record data filename"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/z;

    invoke-direct {v0}, Lcom/coremobility/integration/z;-><init>()V

    throw v0

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const-string v0, " VNS err get next record data filename"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/z;

    invoke-direct {v0}, Lcom/coremobility/integration/z;-><init>()V

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/coremobility/k/a;->a(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "VN-%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    long-to-int v0, p0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenerateVnoteFilename With "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, ".TXT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_1
    const-string v0, ".AMR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_2
    const-string v0, ".AWB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_3
    const-string v0, ".EVF"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_4
    const-string v0, ".EVH"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_5
    const-string v0, ".MP3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_6
    const-string v0, ".QCP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
    .end sparse-switch
.end method

.method private a(JIIII)V
    .locals 12

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessDeleteContentChange + RecId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VonoteId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OldDirId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OldStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_c

    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p6

    if-eq v0, v4, :cond_b

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x3

    move v6, v1

    move v7, v2

    move v2, v4

    :goto_0
    move/from16 v0, p5

    int-to-long v8, v0

    const-wide/32 v10, 0x200000

    and-long/2addr v8, v10

    const-wide/32 v10, 0x200000

    cmp-long v1, v8, v10

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x3

    move/from16 v0, p5

    int-to-long v8, v0

    const-wide/32 v10, 0x200000

    or-long/2addr v8, v10

    long-to-int v4, v8

    :goto_1
    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    const/4 v5, 0x1

    const v6, -0x8001

    and-int/2addr v4, v6

    :cond_1
    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    int-to-long v8, v4

    invoke-static {v5, p3, v7, v8, v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IZJ)Z

    :cond_2
    move v4, v3

    move v3, v2

    move v2, v1

    :goto_2
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    const/4 v5, 0x1

    invoke-virtual {v1, p3, v5}, Lcom/coremobility/k/cv;->a(IZ)I

    :cond_3
    iget-object v1, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    :cond_5
    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/coremobility/k/cx;->s:Lcom/coremobility/k/g;

    invoke-virtual {v1, p3, v2}, Lcom/coremobility/k/g;->a(II)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v1, p3}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;I)V

    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v1, p1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;J)V

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move/from16 v1, p4

    move/from16 v4, p5

    goto :goto_1

    :cond_b
    move/from16 v6, p4

    move v7, v2

    move v2, v1

    goto :goto_0

    :cond_c
    move/from16 v2, p4

    move v4, v3

    move v3, v1

    goto :goto_2
.end method

.method public static a(IZ)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/coremobility/a/a;->d:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/coremobility/k/cx;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/coremobility/k/cx;->l:I

    if-ne v2, p0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    sput p0, Lcom/coremobility/k/cx;->m:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " VNS Want to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/coremobility/k/de;Z)Z
    .locals 11

    const-wide/16 v9, 0x12

    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    const/16 v5, 0x1c

    const/4 v3, 0x0

    new-instance v4, Lcom/coremobility/integration/h/c;

    invoke-direct {v4, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    const-string v0, ""

    const-wide/16 v1, 0x12

    :try_start_0
    invoke-static {v1, v2, v4}, Lcom/coremobility/k/cx;->a(JLcom/coremobility/integration/h/c;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/coremobility/integration/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget v1, v4, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_0

    const-string v0, "VNS err adding wel vn d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/coremobility/integration/g;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+VNS welc file err "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/coremobility/k/de;->d(J)V

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    const-wide/16 v1, 0x14c0

    if-eqz p2, :cond_2

    const-wide/32 v1, 0x94c0

    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/coremobility/k/de;->a(J)V

    invoke-virtual {p1}, Lcom/coremobility/k/de;->b()[J

    move-result-object v1

    aput-wide v7, v1, v3

    if-eqz p2, :cond_3

    sget-object v1, Lcom/coremobility/k/cx;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, v6}, Lcom/coremobility/k/de;->b(I)V

    invoke-virtual {p1, v9, v10}, Lcom/coremobility/k/de;->c(J)V

    invoke-virtual {p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coremobility/k/de;->b(J)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0, v6, p1, v4}, Lcom/coremobility/k/df;->a(ILcom/coremobility/k/de;Lcom/coremobility/integration/h/c;)V

    iget v0, v4, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_4

    const-string v0, "VNS err creating wel vn"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/coremobility/k/cx;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3240

    invoke-interface {v0, v1, v3, v3, v3}, Lcom/coremobility/integration/k;->a(IIIZ)Z

    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3200

    invoke-interface {v0, v1, v3, v3, v3}, Lcom/coremobility/integration/k;->a(IIIZ)Z

    goto :goto_3
.end method

.method public static b(IILcom/coremobility/integration/h/c;)V
    .locals 4

    const/16 v3, 0x1c

    const/4 v2, 0x4

    const/4 v1, 0x0

    iput v1, p2, Lcom/coremobility/integration/h/c;->a:I

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iput v2, p2, Lcom/coremobility/integration/h/c;->a:I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/coremobility/k/cx;->r:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p0, :cond_4

    :try_start_0
    sget v0, Lcom/coremobility/k/cx;->m:I

    if-ne p0, v0, :cond_2

    const/4 v0, 0x4

    iput v0, p2, Lcom/coremobility/integration/h/c;->a:I

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " VNS SetSafe deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/coremobility/k/cx;->m:I

    sget v0, Lcom/coremobility/k/cx;->l:I

    if-eqz v0, :cond_3

    sget v0, Lcom/coremobility/k/cx;->l:I

    if-eq p0, v0, :cond_3

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/k/cx;->k:I

    :cond_3
    sget v0, Lcom/coremobility/k/cx;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coremobility/k/cx;->k:I

    sput p0, Lcom/coremobility/k/cx;->l:I

    monitor-exit v2

    goto :goto_1

    :cond_4
    sget v0, Lcom/coremobility/k/cx;->l:I

    if-eqz v0, :cond_6

    sget v0, Lcom/coremobility/k/cx;->k:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/coremobility/k/cx;->k:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/k/cx;->l:I

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    monitor-exit v2

    const-string v0, " VNS set 0 unsafe"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b(JLjava/lang/String;IIIII)V
    .locals 7

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternalProcessChanges + RecId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VonoteId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldDirId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "insert"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessInsertContentChange + RecId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VonoteId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DirId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v0, p1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;J)V

    const/4 v0, 0x3

    if-ne p7, v0, :cond_3

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0}, Lcom/coremobility/integration/h/c;-><init>()V

    iget-object v1, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1, p4, p7, v0}, Lcom/coremobility/k/df;->a(IILcom/coremobility/integration/h/c;)V

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, -0x1

    if-eq p7, v0, :cond_0

    if-eqz p7, :cond_0

    const/16 v0, 0x1c

    const-string v1, "Insert to Invalid Directory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "VnoteService ProcessChanges - Delete Exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v0, "update"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessUpdateContentChange + RecId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VonoteId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldDirId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NewDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NewStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v0, p1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;J)V

    const/4 v0, 0x1

    if-ne p7, v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    const/16 v0, 0x1c

    const-string v1, "ProcessUpdateContentChange Trigger OutBox"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/k/cx;->l()V

    :cond_5
    const/4 v0, -0x1

    if-eq p8, v0, :cond_2

    and-int v0, p8, p6

    if-eq p8, v0, :cond_2

    const/4 v0, 0x3

    if-ne p5, v0, :cond_2

    int-to-long v0, p8

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    int-to-long v0, p6

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    int-to-long v0, p8

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    int-to-long v0, p8

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0}, Lcom/coremobility/integration/h/c;-><init>()V

    iget-object v1, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1, p4, v0}, Lcom/coremobility/k/df;->a(ILcom/coremobility/integration/h/c;)V

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_7

    const/16 v0, 0x1c

    const-string v1, " VNS err in act"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0}, Lcom/coremobility/k/df;->l()[J

    move-result-object v0

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    :cond_9
    sget-boolean v2, Lcom/coremobility/a/a;->d:Z

    if-eqz v2, :cond_a

    const/16 v2, 0x1c

    const-string v3, "ProcessUpdateContentChange Dm.Set ReadTimeStamp"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/k/cx;->s:Lcom/coremobility/k/g;

    long-to-int v0, v0

    invoke-virtual {v2, p4, p5, v0}, Lcom/coremobility/k/g;->a(III)V

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x1c

    const-string v1, "ProcessUpdateContentChange VnotesFirstOpened"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v1, 0x2e0003

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p4, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "delete"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_deleted"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    if-nez v0, :cond_d

    const/16 v1, 0x1c

    const-string v2, "Vnotes Content Provider Cursor Error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/k/bg;

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3}, Lcom/coremobility/k/bg;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    move-object v0, p0

    move-wide v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/k/cx;->a(JIIII)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v6

    goto :goto_3

    :cond_e
    const-string v0, "delete_bulk"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/coremobility/k/cx;->n()V

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalide Vnotes Change Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static c(Lcom/coremobility/integration/h/c;)I
    .locals 2

    invoke-static {}, Lcom/coremobility/k/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x14

    iput v1, p0, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0
.end method

.method protected static c(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 9

    const-wide/16 v2, 0x0

    const/16 v8, 0x1c

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding voicemail line= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "at index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {p1}, Lcom/coremobility/j/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v4, v7

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Voicemail line already exists."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v7

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    new-instance v4, Lcom/coremobility/app/vnotes/jy;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/coremobility/app/vnotes/jy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v4, 0x5100

    invoke-interface {v0, v4, v1}, Lcom/coremobility/integration/k;->a(II)Z

    move v4, v7

    :goto_2
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v6, 0x5101

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v4, v0}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    iget-object v5, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v6, 0x5102

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v4, v0}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert out of bounds in AddVoicemailLine. Index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Lines = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coremobility/k/cx;->x:Lcom/coremobility/k/cx;

    const/16 v1, 0x7c

    move-wide v4, v2

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/k/cx;->v:Lcom/coremobility/k/cx;

    return-void
.end method

.method private n()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "dir_id"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const-string v1, "is_deleted"

    aput-object v1, v0, v8

    const-string v1, "is_deleted = 1 OR is_deleted = 2"

    iget-object v2, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    iput-object v5, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    :cond_0
    iget-object v2, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes"

    invoke-static {v2, v3, v0, v1, v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-nez v0, :cond_2

    const/16 v0, 0x1c

    const-string v1, "ProcessDeleteContentBulk No Vnotes to Delete"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessDeleteContentBulk with Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v3

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/k/cx;->a(JIIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    iput-object v5, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/coremobility/k/d;

    invoke-direct {v0}, Lcom/coremobility/k/d;-><init>()V

    iget-object v1, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v2, 0x2e0007

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method private p()V
    .locals 10

    const/4 v8, 0x2

    const/16 v7, 0x1c

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/coremobility/k/cx;->B:Z

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lcom/coremobility/k/cx;->B:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "operation"

    aput-object v1, v0, v5

    const-string v1, "record_id"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "old_dir_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "old_status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "new_dir_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "new_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "guid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "old_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "new_rate"

    aput-object v2, v0, v1

    const-string v1, "guid IS NULL OR guid=\'\'"

    iget-object v2, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    iput-object v6, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    :cond_0
    iget-object v2, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "changes"

    invoke-static {v2, v3, v0, v1, v6}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    const-string v0, "ProcessChangesContentBulk No Changes to Process"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->b()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    iput-object v6, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    const-string v0, "ProcessChangesContentBulk No Changes to Process"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessChangesContentBulk with Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    int-to-long v1, v0

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v5}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v6

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v7

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v8

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/coremobility/k/cx;->b(JLjava/lang/String;IIIII)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    iput-object v6, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/coremobility/k/cx;->C:Z

    if-nez v0, :cond_6

    iput-boolean v5, p0, Lcom/coremobility/k/cx;->C:Z

    invoke-direct {p0}, Lcom/coremobility/k/cx;->n()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-eqz v0, :cond_1

    :cond_7
    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    goto/16 :goto_0
.end method

.method private q()V
    .locals 8

    const/16 v7, 0x3201

    const/16 v6, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-interface {v0, v7, v2, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    new-instance v4, Lcom/coremobility/k/am;

    sget-boolean v5, Lcom/coremobility/a/a;->f:Z

    invoke-direct {v4, v5, v0}, Lcom/coremobility/k/am;-><init>(ZZ)V

    invoke-static {v4}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    sget-boolean v4, Lcom/coremobility/a/a;->f:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/k/cx;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v2, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "CM+VNS send prov-auto vn"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v6, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/k/cx;->r()I

    move-result v1

    iput-object v0, p0, Lcom/coremobility/k/cx;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-interface {v0, v7, v2, v2, v2}, Lcom/coremobility/integration/k;->a(IIIZ)Z

    :goto_1
    new-instance v0, Lcom/coremobility/k/br;

    invoke-direct {v0, v1}, Lcom/coremobility/k/br;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "CM+VNS no mdn at autoprov"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "CM+VNS app not open at autoprov"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private r()I
    .locals 12

    const/4 v11, 0x1

    const-wide/16 v2, 0x1

    const/4 v7, 0x0

    new-instance v4, Lcom/coremobility/integration/h/c;

    invoke-direct {v4, v7}, Lcom/coremobility/integration/h/c;-><init>(B)V

    const-string v0, ""

    const-string v1, "This message activates the Visual Voicemail service."

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v8, v5

    const-wide/16 v9, 0x1

    :try_start_0
    invoke-static {v9, v10, v4}, Lcom/coremobility/k/cx;->a(JLcom/coremobility/integration/h/c;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/coremobility/integration/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v6, Lcom/coremobility/k/de;

    invoke-direct {v6}, Lcom/coremobility/k/de;-><init>()V

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Lcom/coremobility/k/de;->d(J)V

    invoke-virtual {v6, v1}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/coremobility/k/de;->b(I)V

    invoke-virtual {v6, v2, v3}, Lcom/coremobility/k/de;->c(J)V

    const-string v0, "activate@vvm.sprint.com"

    invoke-virtual {v6, v0}, Lcom/coremobility/k/de;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0, v11, v6, v4}, Lcom/coremobility/k/df;->a(ILcom/coremobility/k/de;Lcom/coremobility/integration/h/c;)V

    iget v0, v4, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    const-string v1, "VNS err creating prov vn"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v7, v4, Lcom/coremobility/integration/h/c;->a:I

    :goto_2
    return v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/coremobility/integration/g;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/16 v1, 0x64

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0}, Lcom/coremobility/k/df;->b()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_2
.end method

.method private s()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/16 v8, 0x1c

    const/4 v1, 0x0

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v0, :cond_0

    const-string v0, "VNOTES - Content Resolver Not Set!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v1

    const/4 v3, 0x1

    const-string v4, "dir_id"

    aput-object v4, v0, v3

    const-string v3, "is_deleted"

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const-string v4, "guid"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "record_id"

    aput-object v4, v0, v3

    const-string v3, "filename_only"

    aput-object v3, v0, v10

    const-string v3, "record_id=_id"

    iget-object v4, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes,vnotes_mime"

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v3, v6}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "VNOTES - Content Resolver Query Failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    const-string v0, "VNOTES - Content Resolver. No Vnote Entries!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->c()Z

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v5

    invoke-virtual {v3, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v10}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VNS deleting id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "No data file!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v8, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v6, v5, v2}, Lcom/coremobility/k/df;->a(ILcom/coremobility/integration/h/c;)V

    iget-object v5, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v5, v1, v2}, Lcom/coremobility/k/df;->a(ZLcom/coremobility/integration/h/c;)V

    :cond_4
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->d()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(ILcom/coremobility/integration/h/c;)I
    .locals 7

    const/16 v6, 0x1c

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/coremobility/k/ab;

    invoke-direct {v1, p1}, Lcom/coremobility/k/ab;-><init>(I)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x2

    iput v1, p2, Lcom/coremobility/integration/h/c;->a:I

    new-instance v1, Lcom/coremobility/k/bg;

    iget v2, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v1, v0, v2}, Lcom/coremobility/k/bg;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_2

    iput v6, p2, Lcom/coremobility/integration/h/c;->a:I

    new-instance v1, Lcom/coremobility/k/bg;

    iget v2, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v1, v0, v2}, Lcom/coremobility/k/bg;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_1

    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes"

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v2, v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Vnotes Content Provider Cursor Error"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x1d

    iput v1, p2, Lcom/coremobility/integration/h/c;->a:I

    new-instance v1, Lcom/coremobility/k/bg;

    iget v2, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v1, v0, v2}, Lcom/coremobility/k/bg;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->b()I

    move-result v0

    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->a()V

    new-instance v1, Lcom/coremobility/k/bg;

    iget v2, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v1, v0, v2}, Lcom/coremobility/k/bg;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_1
.end method

.method public final a(Lcom/coremobility/k/dg;Z)I
    .locals 10

    const/16 v9, 0x1c

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/coremobility/k/cx;->j:Z

    if-eqz v0, :cond_1

    const/16 v7, 0x1a

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coremobility/k/cx;->y:Lcom/coremobility/k/dg;

    iput-boolean v7, p0, Lcom/coremobility/k/cx;->j:Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x3202

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v8, v2}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x3203

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v8, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v4

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v8, v8, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x74

    int-to-long v2, v0

    int-to-long v4, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v0, :cond_3

    const-string v0, "VNOTES - Content Resolver Not Set!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/coremobility/k/cx;->s()V

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "dir_id"

    aput-object v1, v0, v7

    const-string v1, "dir_id = 0"

    iget-object v2, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "No DRAFT Records!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->b()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->a()V

    const-string v0, "No DRAFT Records!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->c()Z

    move v0, v8

    :goto_2
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->b()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v8}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes"

    invoke-static {v4, v8, v5, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes_mime"

    invoke-static {v4, v8, v5, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->d()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->a()V

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {p1}, Lcom/coremobility/j/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    new-instance v1, Lcom/coremobility/app/vnotes/jy;

    invoke-direct {v1, p1, v4}, Lcom/coremobility/app/vnotes/jy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x5100

    iget-object v2, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x5101

    invoke-interface {v0, v1, v8, p1}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x5102

    invoke-interface {v0, v1, v8, v4}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    iget-object v0, p0, Lcom/coremobility/k/cx;->x:Lcom/coremobility/k/cx;

    const/16 v1, 0x7c

    int-to-long v2, v8

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    move v0, v8

    goto :goto_1
.end method

.method final a(Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-ltz p2, :cond_1

    const/4 v0, 0x7

    if-ge p2, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/coremobility/k/cx;->b(Ljava/lang/String;I)[I

    move-result-object v0

    if-eqz v0, :cond_4

    aget v0, v0, v2

    :goto_2
    new-instance v1, Lcom/coremobility/integration/h/c;

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v3, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v3, v0, p2, v1}, Lcom/coremobility/k/df;->a(IILcom/coremobility/integration/h/c;)V

    iget v1, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_2

    :goto_3
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1}, Lcom/coremobility/k/df;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_3

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v1, 0x2e0003

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(IILcom/coremobility/integration/h/c;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0, p1}, Lcom/coremobility/k/cv;->c(I)I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    iput v0, p3, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_1
.end method

.method public final a(IIZLcom/coremobility/integration/h/c;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0, p1, p3}, Lcom/coremobility/k/cv;->a(IZ)I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    iput v0, p4, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_1
.end method

.method public final a(IJJ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    return-void
.end method

.method public final a(IJJLjava/lang/Object;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/coremobility/k/cx;->y:Lcom/coremobility/k/dg;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/coremobility/k/cx;->j:Z

    if-eqz v0, :cond_0

    if-eqz p7, :cond_2

    new-instance v0, Lcom/coremobility/k/w;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/k/w;-><init>(IJJ)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+VNS ui cb!( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->y:Lcom/coremobility/k/dg;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/coremobility/k/dg;->a(IJJLjava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/coremobility/k/e;

    invoke-direct {v0}, Lcom/coremobility/k/e;-><init>()V

    iput p1, v0, Lcom/coremobility/k/e;->a:I

    iput-wide p2, v0, Lcom/coremobility/k/e;->b:J

    iput-wide p4, v0, Lcom/coremobility/k/e;->c:J

    iput-object p6, v0, Lcom/coremobility/k/e;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v2, 0x2e0002

    invoke-virtual {v1, v2, v0, v6, v6}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 10

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->c()V

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    const/16 v0, 0x320c

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x320c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v8

    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    const/16 v1, 0x72

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    :goto_1
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/k/cx;->c(Ljava/lang/String;)Z

    int-to-long v2, v8

    const/16 v1, 0x71

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x72

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/16 v0, 0x5100

    if-ne p4, v0, :cond_0

    const/16 v1, 0x77

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/coremobility/a/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->D:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3201

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3201

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->D:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/k/cx;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3201

    invoke-interface {v0, v1}, Lcom/coremobility/integration/k;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v1, 0x2e000a

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x3202

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x3203

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v4

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x74

    int-to-long v2, v0

    int-to-long v4, v4

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lcom/coremobility/k/l;

    invoke-direct {v0}, Lcom/coremobility/k/l;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3200

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    new-instance v6, Lcom/coremobility/k/de;

    invoke-direct {v6}, Lcom/coremobility/k/de;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/k/de;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x64

    const-wide/16 v2, 0x3

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0}, Lcom/coremobility/k/df;->b()I

    move-result v0

    int-to-long v4, v0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    :cond_6
    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v1, 0x3240

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_0

    new-instance v6, Lcom/coremobility/k/de;

    invoke-direct {v6}, Lcom/coremobility/k/de;-><init>()V

    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/k/de;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    const-wide/16 v2, 0x3

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0}, Lcom/coremobility/k/df;->b()I

    move-result v0

    int-to-long v4, v0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_5
    check-cast p2, Lcom/coremobility/k/e;

    iget v1, p2, Lcom/coremobility/k/e;->a:I

    iget-wide v2, p2, Lcom/coremobility/k/e;->b:J

    iget-wide v4, p2, Lcom/coremobility/k/e;->c:J

    iget-object v6, p2, Lcom/coremobility/k/e;->d:Ljava/lang/Object;

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x1c

    const-string v1, "kEvent_VnoteToOutbox"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->e()V

    goto/16 :goto_0

    :sswitch_7
    check-cast p2, Lcom/coremobility/k/d;

    iget-wide v1, p2, Lcom/coremobility/k/d;->a:J

    iget-object v3, p2, Lcom/coremobility/k/d;->b:Ljava/lang/String;

    iget v4, p2, Lcom/coremobility/k/d;->c:I

    iget v5, p2, Lcom/coremobility/k/d;->d:I

    iget v6, p2, Lcom/coremobility/k/d;->e:I

    iget v7, p2, Lcom/coremobility/k/d;->f:I

    iget v8, p2, Lcom/coremobility/k/d;->g:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/coremobility/k/cx;->b(JLjava/lang/String;IIIII)V

    goto/16 :goto_0

    :sswitch_8
    iget-boolean v0, p0, Lcom/coremobility/k/cx;->B:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/coremobility/k/cx;->C:Z

    if-nez v0, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/coremobility/k/cx;->p()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    if-nez v0, :cond_b

    const/16 v0, 0x1c

    const-string v1, "ProcessBulkChangesNextVnote No more Changes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    int-to-long v1, v0

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v6

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v7

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v8

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/coremobility/k/cx;->b(JLjava/lang/String;IIIII)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x1c

    const-string v1, "ProcessBulkChangesNextVnote No more Changes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/cx;->A:Lcom/coremobility/integration/b/b;

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/k/cx;->o()V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    if-nez v0, :cond_e

    const/16 v0, 0x1c

    const-string v1, "ProcessDeleteNextVnote No more Vnotes to Delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v3

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/k/cx;->a(JIIII)V

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x1c

    const-string v1, "ProcessDeleteNextVnote No more Vnotes to Delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/cx;->z:Lcom/coremobility/integration/b/b;

    goto/16 :goto_0

    :sswitch_9
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/k/cx;->a(J)V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/coremobility/k/cx;->p()V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/coremobility/k/cx;->q()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_1
        0x35 -> :sswitch_2
        0x3c -> :sswitch_3
        0x2e0001 -> :sswitch_4
        0x2e0002 -> :sswitch_5
        0x2e0003 -> :sswitch_0
        0x2e0004 -> :sswitch_6
        0x2e0005 -> :sswitch_7
        0x2e0006 -> :sswitch_9
        0x2e0007 -> :sswitch_8
        0x2e0008 -> :sswitch_a
        0x2e000a -> :sswitch_b
    .end sparse-switch
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v2, 0x5102

    invoke-interface {v0, v2, p1, p2}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {v0, p2}, Lcom/coremobility/app/vnotes/jy;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception saving line name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(J)V
    .locals 19

    const/16 v1, 0x1c

    const-string v2, "autoDelete"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v14, Lcom/coremobility/integration/h/c;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->h:Lcom/coremobility/k/cz;

    invoke-virtual {v1}, Lcom/coremobility/k/cz;->a()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_1

    const/16 v1, 0x1c

    iput v1, v14, Lcom/coremobility/integration/h/c;->a:I

    const/16 v1, 0x1c

    const-string v2, "VNOTES - DB Not Set!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    :goto_0
    iget v3, v14, Lcom/coremobility/integration/h/c;->a:I

    if-nez v3, :cond_a

    cmp-long v1, v1, p1

    if-ltz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->h:Lcom/coremobility/k/cz;

    invoke-virtual {v1}, Lcom/coremobility/k/cz;->b()Ljava/util/Vector;

    move-result-object v1

    move-object v9, v1

    :goto_1
    iget v1, v14, Lcom/coremobility/integration/h/c;->a:I

    if-nez v1, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_c

    :cond_0
    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to autodelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_b

    const/16 v2, 0x6a

    const-wide/16 v3, 0xb

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "dir_id"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "status"

    aput-object v5, v1, v4

    const-string v4, "dir_id = 3"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v6, "vnotes"

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v4, v7}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v11

    if-nez v11, :cond_2

    const/16 v1, 0x1c

    iput v1, v14, Lcom/coremobility/integration/h/c;->a:I

    const/16 v1, 0x1c

    const-string v2, "No INBOX Records!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/coremobility/integration/b/b;->b()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v11}, Lcom/coremobility/integration/b/b;->a()V

    const/16 v1, 0x1c

    const-string v2, "No INBOX Records!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v11}, Lcom/coremobility/integration/b/b;->c()Z

    const/4 v1, 0x0

    move v4, v1

    :goto_3
    invoke-virtual {v11}, Lcom/coremobility/integration/b/b;->b()I

    move-result v1

    if-ge v4, v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v12

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v13

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_4

    const/16 v1, 0x1c

    const-string v6, "VNOTES - Content Resolver Not Set!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_4
    sget v6, Lcom/coremobility/k/cx;->l:I

    if-eq v12, v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v6}, Lcom/coremobility/k/df;->b()I

    move-result v6

    if-ne v12, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1}, Lcom/coremobility/k/df;->m()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    and-long v9, v5, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1}, Lcom/coremobility/k/df;->m()J

    move-result-wide v5

    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1}, Lcom/coremobility/k/df;->o()J

    move-result-wide v5

    :goto_5
    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-nez v1, :cond_18

    const-wide/16 v7, 0x0

    cmp-long v1, v9, v7

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->h:Lcom/coremobility/k/cz;

    invoke-virtual {v1, v12, v13}, Lcom/coremobility/k/cz;->a(II)V

    add-long v1, v2, v5

    cmp-long v3, v1, p1

    if-gez v3, :cond_9

    :goto_6
    invoke-virtual {v11}, Lcom/coremobility/integration/b/b;->d()Z

    :goto_7
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide/from16 v17, v1

    move-wide/from16 v2, v17

    goto :goto_3

    :cond_4
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "record_id"

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-string v7, "file_type"

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-string v7, "filename_only"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string v7, "file_size"

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "duration"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-string v7, "transcribe_rate"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "mime_guid"

    aput-object v7, v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "record_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v8, "vnotes_mime"

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v6, v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->b()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->c()Z

    new-instance v1, Lcom/coremobility/k/db;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/coremobility/k/db;-><init>(Lcom/coremobility/k/cx;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v7

    iput v7, v1, Lcom/coremobility/k/db;->a:I

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v7

    iput v7, v1, Lcom/coremobility/k/db;->b:I

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/coremobility/k/db;->c:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v7

    iput v7, v1, Lcom/coremobility/k/db;->d:I

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v7

    iput v7, v1, Lcom/coremobility/k/db;->e:I

    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->a()V

    goto/16 :goto_4

    :cond_7
    int-to-long v6, v5

    const-wide/16 v8, 0x2

    and-long v9, v6, v8

    int-to-long v5, v5

    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    iget v1, v1, Lcom/coremobility/k/db;->d:I

    int-to-long v5, v1

    goto/16 :goto_5

    :cond_8
    move-wide v1, v2

    :cond_9
    invoke-virtual {v11}, Lcom/coremobility/integration/b/b;->a()V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    move-object v9, v1

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x6a

    const-wide/16 v3, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    invoke-virtual/range {v1 .. v8}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_2

    :cond_c
    const/4 v12, 0x0

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v15

    const/4 v1, 0x0

    move v13, v1

    :goto_8
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_12

    invoke-virtual {v9, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/k/da;

    if-eqz v1, :cond_17

    iget v2, v1, Lcom/coremobility/k/da;->a:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/coremobility/k/cx;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v3, v1, Lcom/coremobility/k/da;->a:I

    iget v5, v1, Lcom/coremobility/k/da;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v2, v3, v5, v14}, Lcom/coremobility/k/df;->a(IILcom/coremobility/integration/h/c;)V

    iget v2, v14, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_d

    const/16 v2, 0x1c

    const-string v3, "VNS err activating"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    move-wide v10, v2

    :goto_9
    iget v2, v14, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_11

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to autodelete vnote ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lcom/coremobility/k/da;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v12

    :goto_a
    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v15

    cmp-long v2, v2, v4

    if-gtz v2, :cond_13

    add-int/lit8 v2, v13, 0x1

    move v12, v1

    move v13, v2

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_e

    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/k/cv;->a(IZ)I

    move-result v2

    iput v2, v14, Lcom/coremobility/integration/h/c;->a:I

    iget v2, v14, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x0

    move-wide v10, v2

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v2}, Lcom/coremobility/k/df;->o()J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->m()J

    move-result-wide v5

    const-wide/32 v7, 0x200000

    and-long/2addr v5, v7

    const-wide/32 v7, 0x200000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_10

    const/4 v2, 0x1

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v5, v2, v14}, Lcom/coremobility/k/df;->a(ZLcom/coremobility/integration/h/c;)V

    move-wide v10, v3

    goto :goto_9

    :cond_11
    iget v2, v1, Lcom/coremobility/k/da;->b:I

    int-to-long v3, v2

    iget v1, v1, Lcom/coremobility/k/da;->a:I

    int-to-long v5, v1

    const/16 v2, 0x65

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_17

    int-to-long v1, v12

    add-long/2addr v1, v10

    long-to-int v1, v1

    goto :goto_a

    :cond_12
    move v1, v12

    :cond_13
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    iget v2, v14, Lcom/coremobility/integration/h/c;->a:I

    if-nez v2, :cond_16

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_15

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v3, 0x2e0006

    const/4 v4, 0x0

    int-to-long v5, v1

    sub-long v5, p1, v5

    long-to-int v1, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_14
    :goto_c
    int-to-long v3, v13

    iget v1, v14, Lcom/coremobility/integration/h/c;->a:I

    int-to-long v5, v1

    const/16 v2, 0x73

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v2, 0x2e0006

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v1}, Lcom/coremobility/k/cv;->c()V

    goto :goto_c

    :cond_17
    move v1, v12

    goto/16 :goto_a

    :cond_18
    move-wide v1, v2

    goto/16 :goto_6

    :cond_19
    move-wide v1, v2

    goto/16 :goto_7
.end method

.method public final a(JLjava/lang/String;IIIII)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/coremobility/k/d;

    invoke-direct {v0}, Lcom/coremobility/k/d;-><init>()V

    iput-wide p1, v0, Lcom/coremobility/k/d;->a:J

    iput-object p3, v0, Lcom/coremobility/k/d;->b:Ljava/lang/String;

    iput p4, v0, Lcom/coremobility/k/d;->c:I

    iput p5, v0, Lcom/coremobility/k/d;->d:I

    iput p6, v0, Lcom/coremobility/k/d;->e:I

    iput p7, v0, Lcom/coremobility/k/d;->f:I

    iput p8, v0, Lcom/coremobility/k/d;->g:I

    iget-object v1, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v2, 0x2e0005

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(JLjava/lang/String;ILjava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/coremobility/k/d;

    invoke-direct {v0}, Lcom/coremobility/k/d;-><init>()V

    iput-wide p1, v0, Lcom/coremobility/k/d;->a:J

    iput-object p3, v0, Lcom/coremobility/k/d;->b:Ljava/lang/String;

    iput p4, v0, Lcom/coremobility/k/d;->c:I

    iput-object p5, v0, Lcom/coremobility/k/d;->h:Ljava/lang/String;

    iput p6, v0, Lcom/coremobility/k/d;->i:I

    iput p7, v0, Lcom/coremobility/k/d;->j:I

    iget-object v1, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v2, 0x2e0009

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method final a(Lcom/coremobility/k/de;)V
    .locals 11

    const/16 v10, 0x320c

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/coremobility/a/a;->f:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-interface {v0, v10, v1, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v2

    const-wide/16 v8, 0x200

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v6}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/coremobility/k/cx;->x:Lcom/coremobility/k/cx;

    invoke-direct {v2, v0}, Lcom/coremobility/k/cx;->c(Ljava/lang/String;)Z

    :cond_3
    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-interface {v0, v10, v1}, Lcom/coremobility/integration/k;->a(II)Z

    const/16 v1, 0x72

    const-wide/16 v2, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    const/16 v1, 0x71

    move-object v0, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_1
.end method

.method public final a(Lcom/coremobility/k/de;Lcom/coremobility/integration/h/c;)V
    .locals 10

    const-wide/16 v2, 0x3

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/coremobility/k/df;->a(ILcom/coremobility/k/de;Lcom/coremobility/integration/h/c;)V

    invoke-virtual {p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    iget v4, p2, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v4, :cond_0

    const/16 v0, 0x1c

    const-string v1, " VNS err crea vn"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v4

    const-wide/16 v8, 0x200

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v4

    const/16 v5, 0x320c

    invoke-virtual {v4, v5, v7}, Lcom/coremobility/integration/a/a;->a(II)Z

    :cond_1
    const-wide/16 v4, 0x2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/16 v1, 0x78

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x64

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_0
.end method

.method final a(Lcom/coremobility/integration/h/c;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v2, 0x3202

    const/16 v3, 0x96

    invoke-interface {v1, v2, v0, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1}, Lcom/coremobility/k/cx;->a(ILcom/coremobility/integration/h/c;)I

    move-result v2

    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(Lcom/coremobility/integration/h/c;)I
    .locals 8

    const/16 v7, 0x1d

    const/16 v6, 0x1c

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_0

    iput v6, p1, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return v0

    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id ASC"

    iget-object v4, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes"

    invoke-static {v4, v5, v1, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "Vnotes Content Provider Cursor Error"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v7, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    iput v7, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v2, v0}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v1

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    goto :goto_0
.end method

.method public final b(ILcom/coremobility/integration/h/c;)Lcom/coremobility/k/de;
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/coremobility/k/ac;

    invoke-direct {v0, p1, v1}, Lcom/coremobility/k/ac;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0, p1, v1, p2}, Lcom/coremobility/k/df;->a(IILcom/coremobility/integration/h/c;)V

    const/4 v0, 0x0

    iget v1, p2, Lcom/coremobility/integration/h/c;->a:I

    if-nez v1, :cond_0

    new-instance v0, Lcom/coremobility/k/de;

    invoke-direct {v0}, Lcom/coremobility/k/de;-><init>()V

    iget-object v1, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v1, v0}, Lcom/coremobility/k/df;->a(Lcom/coremobility/k/de;)V

    :cond_0
    new-instance v1, Lcom/coremobility/k/bh;

    iget v2, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v1, v2}, Lcom/coremobility/k/bh;-><init>(I)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-object v0
.end method

.method public final b()V
    .locals 11

    const v10, 0x2e0001

    const/16 v9, 0x1c

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremobility/k/cx;->t:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VnotesService Creation Time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremobility/k/cx;->t:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/b/d;->a()V

    iget-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    :cond_0
    new-instance v0, Lcom/coremobility/k/df;

    invoke-direct {v0}, Lcom/coremobility/k/df;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    new-instance v0, Lcom/coremobility/k/cv;

    invoke-direct {v0}, Lcom/coremobility/k/cv;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    new-instance v0, Lcom/coremobility/k/cz;

    invoke-direct {v0, p0}, Lcom/coremobility/k/cz;-><init>(Lcom/coremobility/k/cx;)V

    iput-object v0, p0, Lcom/coremobility/k/cx;->h:Lcom/coremobility/k/cz;

    new-instance v0, Lcom/coremobility/k/a;

    invoke-direct {v0}, Lcom/coremobility/k/a;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cx;->q:Lcom/coremobility/k/a;

    new-instance v0, Lcom/coremobility/k/cy;

    invoke-direct {v0, p0}, Lcom/coremobility/k/cy;-><init>(Lcom/coremobility/k/cx;)V

    iput-object v0, p0, Lcom/coremobility/k/cx;->i:Lcom/coremobility/k/cy;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    sget-boolean v0, Lcom/coremobility/a/a;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/coremobility/k/g;

    invoke-direct {v0}, Lcom/coremobility/k/g;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cx;->s:Lcom/coremobility/k/g;

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->e:Lcom/coremobility/integration/file/a;

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const/high16 v2, 0x2e

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    iput-boolean v1, p0, Lcom/coremobility/k/cx;->j:Z

    sget-boolean v0, Lcom/coremobility/a/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/cx;->s:Lcom/coremobility/k/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/k/g;->a(Lcom/coremobility/k/cx;)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->j()V

    invoke-static {}, Lcom/coremobility/g/j;->a()Lcom/coremobility/g/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cx;->w:Lcom/coremobility/g/j;

    iput-object p0, p0, Lcom/coremobility/k/cx;->x:Lcom/coremobility/k/cx;

    iget-object v0, p0, Lcom/coremobility/k/cx;->w:Lcom/coremobility/g/j;

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Lcom/coremobility/g/j;->a(Lcom/coremobility/g/h;I)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->q:Lcom/coremobility/k/a;

    invoke-virtual {v0}, Lcom/coremobility/k/a;->a()Z

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v2, 0x5100

    invoke-interface {v0, v2, v1, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of shared lines = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v4, 0x5101

    invoke-interface {v3, v4, v0, v8}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v5, 0x5102

    invoke-interface {v4, v5, v0, v8}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    new-instance v6, Lcom/coremobility/app/vnotes/jy;

    invoke-direct {v6, v3, v4}, Lcom/coremobility/app/vnotes/jy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Line address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v9, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v2, 0x3200

    invoke-interface {v0, v2, v1, v7}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    invoke-virtual {v0, v10, v8, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_4
    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v2, 0x3240

    invoke-interface {v0, v2, v1, v7}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-static {v10, v8}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    invoke-virtual {v0, v10, v8, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v2, 0x3205

    const v3, 0x41a000

    invoke-interface {v0, v2, v1, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    const/16 v3, 0x3204

    const v4, 0x7a120

    invoke-interface {v2, v3, v1, v4}, Lcom/coremobility/integration/k;->a(III)I

    move-result v2

    const v3, 0x4e2000

    sub-int v0, v3, v0

    iput v0, p0, Lcom/coremobility/k/cx;->o:I

    iget v0, p0, Lcom/coremobility/k/cx;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/k/cx;->n:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coremobility/k/cx;->t:J

    sub-long v4, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VnotesService Creation Time = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/coremobility/k/cx;->t:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " Current Time = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Elapsed Time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v2, 0x2e0008

    invoke-virtual {v0, v2, v8, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public final b(I)V
    .locals 9

    const/16 v1, 0x8c

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v3, Lcom/coremobility/integration/h/c;

    invoke-direct {v3, v7}, Lcom/coremobility/integration/h/c;-><init>(B)V

    move v0, v7

    :goto_0
    if-ge v0, p1, :cond_3

    invoke-static {v3}, Lcom/coremobility/k/cx;->c(Lcom/coremobility/integration/h/c;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    const/4 v8, -0x2

    if-ne v2, v8, :cond_2

    :cond_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    move v2, v7

    :goto_1
    if-ge v2, v8, :cond_1

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/k/a;->b(I)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x1c

    const-string v2, " VNS err get next record data filename"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1b

    iput v0, v3, Lcom/coremobility/integration/h/c;->a:I

    const-wide/16 v2, 0x1b

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    :goto_2
    return-void

    :cond_2
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/coremobility/k/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput v7, v3, Lcom/coremobility/integration/h/c;->a:I

    move-object v0, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    goto :goto_2
.end method

.method public final b(IJJ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x1c

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v2, v0

    new-array v2, v2, [B

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    new-instance v4, Lcom/coremobility/integration/r;

    invoke-direct {v4}, Lcom/coremobility/integration/r;-><init>()V

    long-to-int v0, v0

    iput v0, v4, Lcom/coremobility/integration/r;->a:I

    invoke-static {p1, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not open file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error read file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    new-instance v0, Lcom/coremobility/k/dc;

    invoke-direct {v0, p0}, Lcom/coremobility/k/dc;-><init>(Lcom/coremobility/k/cx;)V

    array-length v1, v2

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    iget-object v0, v0, Lcom/coremobility/k/dc;->a:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-nez v1, :cond_3

    const/16 v0, 0x1c

    const-string v1, "Server param.xml length is 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SAX parser exception"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "expection message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;I)[I
    .locals 9

    const/16 v8, 0x1c

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "status"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dir_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes"

    invoke-static {v4, v5, v2, v3, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Guid not found error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v3

    if-eq v3, v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected guid count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v2, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    aput v0, v1, v6

    invoke-virtual {v2, v7}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    aput v0, v1, v7

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    move-object v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coremobility/k/df;->a(IILcom/coremobility/integration/h/c;)V

    iget v0, p3, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->f:Lcom/coremobility/k/df;

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/k/b;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->b()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    if-eqz v0, :cond_2

    const/high16 v0, 0x2e

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    :cond_2
    return-void
.end method

.method public final e()Lcom/coremobility/k/g;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cx;->s:Lcom/coremobility/k/g;

    return-object v0
.end method

.method public final f()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cx;->p:Ljava/util/Vector;

    return-object v0
.end method

.method public final g()I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/coremobility/k/cx;->j:Z

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    const-string v1, "VNS vnote is not open"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/coremobility/k/cx;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/cx;->y:Lcom/coremobility/k/dg;

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->b()V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    sget-boolean v0, Lcom/coremobility/a/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->x:Lcom/coremobility/k/cx;

    invoke-direct {v0}, Lcom/coremobility/k/cx;->q()V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->w:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cx;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->f()V

    iget-object v0, p0, Lcom/coremobility/k/cx;->w:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/k/cv;->a(Z)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cx;->g:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->d()V

    return-void
.end method

.method public final l()V
    .locals 4

    const/16 v2, 0x3201

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/coremobility/a/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-interface {v0, v2, v3, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cx;->c:Lcom/coremobility/integration/k;

    invoke-interface {v0, v2, v3}, Lcom/coremobility/integration/k;->a(II)Z

    :cond_0
    iget-object v0, p0, Lcom/coremobility/k/cx;->d:Lcom/coremobility/g/b;

    const v1, 0x2e0004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public final m()J
    .locals 10

    const-wide/16 v0, 0x0

    const/16 v9, 0x1c

    const/4 v8, 0x0

    new-instance v2, Lcom/coremobility/integration/s;

    invoke-direct {v2}, Lcom/coremobility/integration/s;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/s;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "CM+VNS file err %d query space"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v9, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, v2, Lcom/coremobility/integration/s;->a:J

    iget v4, p0, Lcom/coremobility/k/cx;->n:I

    int-to-long v4, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Free space: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v9, v6, v7}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Free space after cushion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v9, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sub-long v0, v2, v4

    goto :goto_1
.end method
