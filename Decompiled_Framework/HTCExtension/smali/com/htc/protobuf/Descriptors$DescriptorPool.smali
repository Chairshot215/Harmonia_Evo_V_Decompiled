.class final Lcom/htc/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/htc/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dependencies:[Lcom/htc/protobuf/Descriptors$DescriptorPool;

.field private final descriptorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final enumValuesByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/protobuf/Descriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lcom/htc/protobuf/Descriptors$FileDescriptor;)V
    .locals 8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    array-length v6, p1

    new-array v6, v6, [Lcom/htc/protobuf/Descriptors$DescriptorPool;

    iput-object v6, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->dependencies:[Lcom/htc/protobuf/Descriptors$DescriptorPool;

    const/4 v3, 0x0

    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->dependencies:[Lcom/htc/protobuf/Descriptors$DescriptorPool;

    aget-object v7, p1, v3

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v7}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    :try_start_0
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FileDescriptor;)V
    :try_end_0
    .catch Lcom/htc/protobuf/Descriptors$DescriptorValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v6, Lcom/htc/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    return-void
.end method

.method static synthetic access$1300(Lcom/htc/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    return-object v0
.end method

.method static validateSymbolName(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-interface {p0}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Missing name."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_0
    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x80

    if-lt v0, v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a valid identifier."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_5
    return-void
.end method


# virtual methods
.method addEnumValueByNumber(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 4

    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;I)V

    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method addFieldByNumber(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;I)V

    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "has already been used in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" by field \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v2

    :cond_0
    return-void
.end method

.method addPackage(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move-object v1, p1

    :goto_0
    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v4, v1, p1, p2}, Lcom/htc/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FileDescriptor;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v3, v2, Lcom/htc/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined (as something other than a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "package) in file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FileDescriptor;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0x22

    invoke-static {p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->validateSymbolName(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    invoke-interface {p1}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-interface {v2}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v3

    :cond_0
    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined in \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v3

    :cond_1
    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined in file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v3

    :cond_2
    return-void
.end method

.method findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    .locals 6

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    if-eqz v4, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorPool;->dependencies:[Lcom/htc/protobuf/Descriptors$DescriptorPool;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    iget-object v5, v1, Lcom/htc/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    if-eqz v4, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v6, -0x1

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    new-instance v5, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" is not defined."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p2, v6, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v5

    :cond_1
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    move-object v1, p1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eq v2, v6, :cond_0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_5
    return-object v3
.end method
