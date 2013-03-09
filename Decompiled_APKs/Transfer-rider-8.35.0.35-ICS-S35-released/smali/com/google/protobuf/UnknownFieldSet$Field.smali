.class public final Lcom/google/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# static fields
.field private static final fieldDefaultInstance:Lcom/google/protobuf/UnknownFieldSet$Field;


# instance fields
.field private fixed32:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fixed64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field

.field private lengthDelimited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private varint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 676
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/UnknownFieldSet$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet$Field;
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lcom/google/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method private getIdentityArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 719
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .prologue
    .line 661
    #calls: Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->create()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->access$300()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1
    .parameter "copyFrom"

    .prologue
    .line 669
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 699
    if-ne p0, p1, :cond_0

    .line 700
    const/4 v0, 0x1

    .line 705
    .end local p1
    :goto_0
    return v0

    .line 702
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_1

    .line 703
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/UnknownFieldSet$Field;

    .end local p1
    invoke-direct {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFixed32List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method public getFixed64List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method public getLengthDelimitedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize(I)I
    .locals 5
    .parameter "fieldNumber"

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, result:I
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 757
    .local v2, value:J
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 759
    .end local v2           #value:J
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 760
    .local v2, value:I
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 762
    .end local v2           #value:I
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 763
    .local v2, value:J
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 765
    .end local v2           #value:J
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 766
    .local v2, value:Lcom/google/protobuf/ByteString;
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3

    .line 768
    .end local v2           #value:Lcom/google/protobuf/ByteString;
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UnknownFieldSet;

    .line 769
    .local v2, value:Lcom/google/protobuf/UnknownFieldSet;
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_4

    .line 771
    .end local v2           #value:Lcom/google/protobuf/UnknownFieldSet;
    :cond_4
    return v1
.end method

.method public getSerializedSizeAsMessageSetExtension(I)I
    .locals 4
    .parameter "fieldNumber"

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, result:I
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 794
    .local v2, value:Lcom/google/protobuf/ByteString;
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 797
    .end local v2           #value:Lcom/google/protobuf/ByteString;
    :cond_0
    return v1
.end method

.method public getVarintList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeAsMessageSetExtensionTo(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 783
    .local v1, value:Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 785
    .end local v1           #value:Lcom/google/protobuf/ByteString;
    :cond_0
    return-void
.end method

.method public writeTo(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "fieldNumber"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 734
    .local v1, value:J
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    .line 736
    .end local v1           #value:J
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 737
    .local v1, value:I
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    .line 739
    .end local v1           #value:I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 740
    .local v1, value:J
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_2

    .line 742
    .end local v1           #value:J
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 743
    .local v1, value:Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_3

    .line 745
    .end local v1           #value:Lcom/google/protobuf/ByteString;
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet;

    .line 746
    .local v1, value:Lcom/google/protobuf/UnknownFieldSet;
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_4

    .line 748
    .end local v1           #value:Lcom/google/protobuf/UnknownFieldSet;
    :cond_4
    return-void
.end method
