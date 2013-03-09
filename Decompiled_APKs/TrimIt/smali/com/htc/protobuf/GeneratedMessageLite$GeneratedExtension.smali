.class public final Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/htc/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field private final descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

.field private final messageDefaultInstance:Lcom/htc/protobuf/MessageLite;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V
    .locals 0
    .parameter
    .parameter
    .parameter "messageDefaultInstance"
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/htc/protobuf/MessageLite;",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    .local p1, containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;,"TContainingType;"
    .local p2, defaultValue:Ljava/lang/Object;,"TType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;

    .line 509
    iput-object p2, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    .line 510
    iput-object p3, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;

    .line 511
    iput-object p4, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/htc/protobuf/GeneratedMessageLite$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 501
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/MessageLite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;

    return-object v0
.end method


# virtual methods
.method public getContainingTypeDefaultInstance()Lcom/htc/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 536
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 528
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method
