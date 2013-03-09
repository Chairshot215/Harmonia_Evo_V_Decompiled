.class Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeInfo"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
