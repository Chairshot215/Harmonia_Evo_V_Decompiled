.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;
.super Ljava/lang/Object;
.source "FalseFileFilter.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final FALSE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
