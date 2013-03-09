.class public Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;
    }
.end annotation


# static fields
.field public static final MASK_MODIFIER:I = 0xff00

.field public static final MASK_TYPE:I = 0xff

.field public static final OPTIONAL:I = 0x200

.field public static final REPEATED:I = 0x400

.field public static final REQUIRED:I = 0x100

.field public static final TYPE_BOOL:I = 0x18

.field public static final TYPE_BYTES:I = 0x23

.field public static final TYPE_DATA:I = 0x19

.field public static final TYPE_DOUBLE:I = 0x11

.field public static final TYPE_ENUM:I = 0x1e

.field public static final TYPE_FIXED32:I = 0x17

.field public static final TYPE_FIXED64:I = 0x16

.field public static final TYPE_FLOAT:I = 0x12

.field public static final TYPE_GROUP:I = 0x1a

.field public static final TYPE_INT32:I = 0x15

.field public static final TYPE_INT64:I = 0x13

.field public static final TYPE_MESSAGE:I = 0x1b

.field public static final TYPE_SFIXED32:I = 0x1f

.field public static final TYPE_SFIXED64:I = 0x20

.field public static final TYPE_SINT32:I = 0x21

.field public static final TYPE_SINT64:I = 0x22

.field public static final TYPE_STRING:I = 0x24

.field public static final TYPE_TEXT:I = 0x1c

.field public static final TYPE_UINT32:I = 0x1d

.field public static final TYPE_UINT64:I = 0x14

.field public static final TYPE_UNDEFINED:I = 0x10


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;

    invoke-direct {v1, p1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    iget-object v1, p1, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;->access$100(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifiers(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez p0, :cond_0

    const/16 v0, 0x600

    :goto_0
    return v0

    :cond_0
    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I
    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez p0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;->type:I
    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType$TypeInfo;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method newIntMapForProtoBuf()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->types:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->newIntMapWithSameBufferSize()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
