.class public Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/LastModifiedFileComparator;
.super Ljava/lang/Object;
.source "LastModifiedFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/LastModifiedFileComparator;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    const-wide/16 v8, 0x0

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, p2

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v2, v4, v6

    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
