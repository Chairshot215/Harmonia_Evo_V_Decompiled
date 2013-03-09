.class public Lcom/google/android/play/utils/FileModifiedDateComparator;
.super Ljava/lang/Object;
.source "FileModifiedDateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/play/utils/FileModifiedDateComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/play/utils/FileModifiedDateComparator;

    invoke-direct {v0}, Lcom/google/android/play/utils/FileModifiedDateComparator;-><init>()V

    sput-object v0, Lcom/google/android/play/utils/FileModifiedDateComparator;->INSTANCE:Lcom/google/android/play/utils/FileModifiedDateComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 23
    const/4 v0, -0x1

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/utils/FileModifiedDateComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
