.class public final Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;
.super Ljava/lang/Object;
.source "StaticUtil.java"


# static fields
.field private static IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

.field private static emergencyMemory:[B

.field private static final outOfMemoryHandlers:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    const/4 v0, 0x1

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->allocateEmergencyMemory()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateEmergencyMemory()V
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .locals 1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static handleOutOfMemory()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory(Z)V

    return-void
.end method

.method private static handleOutOfMemory(Z)V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p0, :cond_0

    const-string v0, "LowOnMemory"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;

    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;->handleOutOfMemory(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "OutOfMemory"

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private static readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    packed-switch p1, :pswitch_data_0

    :try_start_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    new-instance v3, Ljava/lang/Boolean;

    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v2, v3

    goto :goto_0

    :pswitch_1
    new-instance v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v3

    goto :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/Long;

    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object v2, v3

    goto :goto_0

    :pswitch_3
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V
    .locals 1

    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method private static savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_1

    :cond_3
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
