.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClassLoaderObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ClassLoaderObjectInputStream.java"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/io/InputStream;)V
    .locals 0
    .parameter "classLoader"
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    .line 53
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .parameter "objectStreamClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 74
    .end local v0           #clazz:Ljava/lang/Class;
    :goto_0
    return-object v0

    .restart local v0       #clazz:Ljava/lang/Class;
    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
