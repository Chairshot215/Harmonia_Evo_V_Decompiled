.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# static fields
.field public static final NULL_OUTPUT_STREAM:Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;->NULL_OUTPUT_STREAM:Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .parameter "b"

    .prologue
    .line 54
    return-void
.end method

.method public write([B)V
    .locals 0
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public write([BII)V
    .locals 0
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 46
    return-void
.end method
