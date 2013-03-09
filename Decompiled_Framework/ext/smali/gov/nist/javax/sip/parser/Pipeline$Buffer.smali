.class Lgov/nist/javax/sip/parser/Pipeline$Buffer;
.super Ljava/lang/Object;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/parser/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Buffer"
.end annotation


# instance fields
.field bytes:[B

.field length:I

.field ptr:I

.field final synthetic this$0:Lgov/nist/javax/sip/parser/Pipeline;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V
    .locals 1

    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->this$0:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iput p3, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    iput-object p2, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->bytes:[B

    return-void
.end method


# virtual methods
.method public getNextByte()I
    .locals 4

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->bytes:[B

    iget v2, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    return v0
.end method
