.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    return v0
.end method
