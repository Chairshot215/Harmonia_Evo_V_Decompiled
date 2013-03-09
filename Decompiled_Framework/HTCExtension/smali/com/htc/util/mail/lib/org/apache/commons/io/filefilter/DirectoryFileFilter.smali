.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "DirectoryFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
