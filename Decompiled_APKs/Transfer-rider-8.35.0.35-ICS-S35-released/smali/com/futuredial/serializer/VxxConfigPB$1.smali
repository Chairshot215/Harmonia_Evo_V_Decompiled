.class final Lcom/futuredial/serializer/VxxConfigPB$1;
.super Ljava/lang/Object;
.source "VxxConfigPB.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .parameter "root"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1969
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB;->access$5502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1970
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1972
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PolicyName"

    aput-object v3, v2, v5

    const-string v3, "EscChar"

    aput-object v3, v2, v6

    const-string v3, "EscEncode"

    aput-object v3, v2, v7

    const-string v3, "EscSinglefield"

    aput-object v3, v2, v8

    const-string v3, "QuotedPrintCharset"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "DefaultCharset"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "QpBeginWithBlank"

    aput-object v4, v2, v3

    const-class v3, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const-class v4, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1978
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1980
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PolicyName"

    aput-object v3, v2, v5

    const-string v3, "EscChar"

    aput-object v3, v2, v6

    const-string v3, "QuotedPrintCharset"

    aput-object v3, v2, v7

    const-string v3, "DefaultCharset"

    aput-object v3, v2, v8

    const-string v3, "QpBeginWithBlank"

    aput-object v3, v2, v9

    const-class v3, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const-class v4, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1986
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$3402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1988
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PolicyName"

    aput-object v3, v2, v5

    const-string v3, "HasXNokDt"

    aput-object v3, v2, v6

    const-string v3, "DateIsUtc"

    aput-object v3, v2, v7

    const-class v3, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    const-class v4, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$3502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1994
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1996
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "VcardPolicy"

    aput-object v3, v2, v6

    const-string v3, "VcalendarPolicy"

    aput-object v3, v2, v7

    const-string v3, "VmessagePolicy"

    aput-object v3, v2, v8

    const-class v3, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    const-class v4, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB;->access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2002
    const/4 v0, 0x0

    return-object v0
.end method
