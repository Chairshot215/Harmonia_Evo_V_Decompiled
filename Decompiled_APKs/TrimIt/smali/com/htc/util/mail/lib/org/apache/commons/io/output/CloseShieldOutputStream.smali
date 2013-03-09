.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/CloseShieldOutputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;
.source "CloseShieldOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ClosedOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ClosedOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CloseShieldOutputStream;->out:Ljava/io/OutputStream;

    .line 50
    return-void
.end method
