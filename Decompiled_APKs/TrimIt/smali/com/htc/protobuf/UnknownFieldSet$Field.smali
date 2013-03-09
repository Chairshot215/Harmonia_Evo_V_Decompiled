.class public final Lcom/htc/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# static fields
.field private static final fieldDefaultInstance:Lcom/htc/protobuf/UnknownFieldSet$Field;


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
            "Lcom/htc/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field

.field private lengthDelimited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/ByteString;",
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
    .line 670
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/htc/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/UnknownFieldSet$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/htc/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet$Field;
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/htc/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method private getIdentityArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 713
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .prologue
    .line 655
    #calls: Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->create()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->access$300()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1
    .parameter "copyFrom"

    .prologue
    .line 663
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 693
    if-ne p0, p1, :cond_0

    .line 694
    const/4 v0, 0x1

    .line 699
    .end local p1
    :goto_0
    return v0

    .line 696
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_1

    .line 697
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/htc/protobuf/UnknownFieldSet$Field;

    .end local p1
    invoke-direct {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

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
    .line 676
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

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
    .line 679
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method public getLengthDelimitedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize(I)I
    .locals 5
    .parameter "fieldNumber"

    .prologue
    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, result:I
    iget-object v4, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

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

    .line 751
    .local v2, value:J
    invoke-static {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 753
    .end local v2           #value:J
    :cond_0
    iget-object v4, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

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

    .line 754
    .local v2, value:I
    invoke-static {p1, v2}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 756
    .end local v2           #value:I
    :cond_1
    iget-object v4, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

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

    .line 757
    .local v2, value:J
    invoke-static {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 759
    .end local v2           #value:J
    :cond_2
    iget-object v4, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/ByteString;

    .line 760
    .local v2, value:Lcom/htc/protobuf/ByteString;
    invoke-static {p1, v2}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3

    .line 762
    .end local v2           #value:Lcom/htc/protobuf/ByteString;
    :cond_3
    iget-object v4, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/UnknownFieldSet;

    .line 763
    .local v2, value:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {p1, v2}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_4

    .line 765
    .end local v2           #value:Lcom/htc/protobuf/UnknownFieldSet;
    :cond_4
    return v1
.end method

.method public getSerializedSizeAsMessageSetExtension(I)I
    .locals 4
    .parameter "fieldNumber"

    .prologue
    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, result:I
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/ByteString;

    .line 788
    .local v2, value:Lcom/htc/protobuf/ByteString;
    invoke-static {p1, v2}, Lcom/htc/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/htc/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 791
    .end local v2           #value:Lcom/htc/protobuf/ByteString;
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
    .line 673
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeAsMessageSetExtensionTo(ILcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/ByteString;

    .line 777
    .local v1, value:Lcom/htc/protobuf/ByteString;
    invoke-virtual {p2, p1, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/htc/protobuf/ByteString;)V

    goto :goto_0

    .line 779
    .end local v1           #value:Lcom/htc/protobuf/ByteString;
    :cond_0
    return-void
.end method

.method public writeTo(ILcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "fieldNumber"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

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

    .line 728
    .local v1, value:J
    invoke-virtual {p2, p1, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    .line 730
    .end local v1           #value:J
    :cond_0
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

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

    .line 731
    .local v1, value:I
    invoke-virtual {p2, p1, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    .line 733
    .end local v1           #value:I
    :cond_1
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

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

    .line 734
    .local v1, value:J
    invoke-virtual {p2, p1, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_2

    .line 736
    .end local v1           #value:J
    :cond_2
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/ByteString;

    .line 737
    .local v1, value:Lcom/htc/protobuf/ByteString;
    invoke-virtual {p2, p1, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    goto :goto_3

    .line 739
    .end local v1           #value:Lcom/htc/protobuf/ByteString;
    :cond_3
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/UnknownFieldSet;

    .line 740
    .local v1, value:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-virtual {p2, p1, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeGroup(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_4

    .line 742
    .end local v1           #value:Lcom/htc/protobuf/UnknownFieldSet;
    :cond_4
    return-void
.end method
