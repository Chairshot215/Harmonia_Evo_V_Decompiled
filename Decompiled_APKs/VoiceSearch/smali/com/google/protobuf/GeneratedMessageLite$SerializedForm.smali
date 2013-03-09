.class final Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private asBytes:[B

.field private messageClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .parameter "regularForm"

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    .line 729
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    .line 730
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 740
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 741
    .local v2, messageClass:Ljava/lang/Class;
    const-string v4, "newBuilder"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 742
    .local v3, newBuilder:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite$Builder;

    .line 744
    .local v0, builder:Lcom/google/protobuf/MessageLite$Builder;
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    invoke-interface {v0, v4}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;

    .line 745
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    return-object v4

    .line 746
    .end local v0           #builder:Lcom/google/protobuf/MessageLite$Builder;
    .end local v2           #messageClass:Ljava/lang/Class;
    .end local v3           #newBuilder:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 747
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to find proto buffer class"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 748
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 749
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to find newBuilder method"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 750
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 751
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to call newBuilder method"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 752
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 753
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error calling newBuilder"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 754
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v1

    .line 755
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to understand proto buffer"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
