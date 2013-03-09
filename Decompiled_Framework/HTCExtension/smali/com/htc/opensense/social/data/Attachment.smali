.class public Lcom/htc/opensense/social/data/Attachment;
.super Lcom/htc/opensense/social/data/Extra;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/data/Attachment$Key;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Attachment"


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public targetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/opensense/social/data/Attachment$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Attachment$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Attachment;->targetId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Attachment;->setExtra(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    iput-object p1, p0, Lcom/htc/opensense/social/data/Attachment;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method public static convertToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModifiableKey()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadToObject(Ljava/lang/Class;)Lcom/htc/opensense/social/data/Attachment;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;)",
            "Lcom/htc/opensense/social/data/Attachment;"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense/social/data/Attachment;->mClazz:Ljava/lang/Class;

    iget-object v9, p0, Lcom/htc/opensense/social/data/Attachment;->mClazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/data/Attachment;

    iget-object v9, p0, Lcom/htc/opensense/social/data/Attachment;->mClazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v0, v4

    array-length v7, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_8

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v9, Lcom/htc/opensense/social/data/Attachment$Key;

    invoke-interface {v2, v9}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/data/Attachment$Key;

    if-eqz v6, :cond_0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_1

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :goto_1
    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_2

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v9, "Attachment"

    const-string v10, "InstantiationException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v8, 0x0

    :goto_3
    return-object v8

    :cond_2
    :try_start_1
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_3

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v9, "Attachment"

    const-string v10, "InstantiationException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    :try_start_2
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_4

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_4
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_5

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    :cond_5
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_6

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    :cond_6
    const-class v9, [B

    if-ne v3, v9, :cond_7

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto/16 :goto_1

    :cond_7
    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/opensense/social/data/Attachment;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    iget-object v9, p0, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    iput-object v9, v8, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public putExtraInfo()V
    .locals 13

    iget-object v9, p0, Lcom/htc/opensense/social/data/Attachment;->mClazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v0, v4

    array-length v7, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_b

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v9, Lcom/htc/opensense/social/data/Attachment$Key;

    invoke-interface {v2, v9}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/data/Attachment$Key;

    if-eqz v6, :cond_0

    :try_start_0
    const-string v9, "Attachment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "put "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v9, Ljava/lang/String;

    if-ne v3, v9, :cond_1

    iget-object v10, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_2

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_3

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_1

    :cond_3
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_4

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_5

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_6

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_6
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_7

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_7
    const-class v9, [B

    if-ne v3, v9, :cond_8

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->notNull()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v8, :cond_9

    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cann\'t be null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_9
    const-class v9, Lcom/htc/opensense/social/data/Profile;

    if-ne v3, v9, :cond_a

    iget-object v9, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-interface {v6}, Lcom/htc/opensense/social/data/Attachment$Key;->value()Ljava/lang/String;

    move-result-object v10

    check-cast v8, Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_a
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported field type for column: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Attachment;->targetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/opensense/social/data/Attachment;->putExtraInfo()V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
