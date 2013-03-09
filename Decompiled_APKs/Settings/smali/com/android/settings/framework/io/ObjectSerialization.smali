.class public Lcom/android/settings/framework/io/ObjectSerialization;
.super Ljava/lang/Object;
.source "ObjectSerialization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 102
    new-instance v0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;

    invoke-direct {v0}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;-><init>()V

    .line 105
    .local v0, content:Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mObject:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$002(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/FileNotFoundException;
    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    .line 110
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, e:Ljava/io/IOException;
    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/ClassNotFoundException;
    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0
.end method

.method public static serialize(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 3
    .parameter "fileName"
    .parameter "object"

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v1, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    const/4 v0, 0x0

    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method
