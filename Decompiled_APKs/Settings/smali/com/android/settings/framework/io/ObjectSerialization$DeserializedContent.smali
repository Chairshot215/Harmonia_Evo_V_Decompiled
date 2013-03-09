.class public Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;
.super Ljava/lang/Object;
.source "ObjectSerialization.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/io/ObjectSerialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeserializedContent"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x544c54392f8365b0L


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeserializeContent [mObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
