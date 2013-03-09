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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/htc/protobuf/MessageLite;",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;

    iput-object p2, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;

    iput-object p4, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/htc/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/MessageLite;
    .locals 1

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

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/htc/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method
