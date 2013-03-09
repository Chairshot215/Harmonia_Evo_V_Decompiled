.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanWriteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_WRITE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_WRITE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 61
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method
