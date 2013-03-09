.class public Ljava/util/jar/Attributes$Name;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# static fields
.field public static final CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field static final NAME:Ljava/util/jar/Attributes$Name;

.field public static final SEALED:Ljava/util/jar/Attributes$Name;

.field public static final SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Class-Path"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Manifest-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Main-Class"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Signature-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Sealed"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Installation"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor-Id"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-URL"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x46

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_5

    :cond_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_3

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5

    :cond_3
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_5

    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-le v0, v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iput-object p1, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/jar/Attributes$Name;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/jar/Attributes$Name;

    iget-object v0, p1, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-object v0
.end method
