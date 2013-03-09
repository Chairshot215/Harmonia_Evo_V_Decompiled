.class Ljava/io/EmulatedFieldsForLoading;
.super Ljava/io/ObjectInputStream$GetField;
.source "EmulatedFieldsForLoading.java"


# instance fields
.field private emulatedFields:Ljava/io/EmulatedFields;

.field private streamClass:Ljava/io/ObjectStreamClass;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    iput-object p1, p0, Ljava/io/EmulatedFieldsForLoading;->streamClass:Ljava/io/ObjectStreamClass;

    new-instance v0, Ljava/io/EmulatedFields;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/EmulatedFields;-><init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V

    iput-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    return-void
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1}, Ljava/io/EmulatedFields;->defaulted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method emulatedFields()Ljava/io/EmulatedFields;
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    return-object v0
.end method

.method public get(Ljava/lang/String;B)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->streamClass:Ljava/io/ObjectStreamClass;

    return-object v0
.end method
