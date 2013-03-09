.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_READ:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final READ_ONLY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 69
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 72
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    sget-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/CanReadFileFilter;->READ_ONLY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method
