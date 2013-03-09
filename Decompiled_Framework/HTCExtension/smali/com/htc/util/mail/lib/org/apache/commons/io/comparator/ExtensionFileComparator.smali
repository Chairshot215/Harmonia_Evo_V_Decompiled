.class public Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;
.super Ljava/lang/Object;
.source "ExtensionFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final EXTENSION_COMPARATOR:Ljava/util/Comparator;

.field public static final EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

.field public static final EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;

.field public static final EXTENSION_REVERSE:Ljava/util/Comparator;

.field public static final EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

.field public static final EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->INSENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, p2

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-virtual {v4, v2, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method
