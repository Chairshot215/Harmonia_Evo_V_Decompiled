.class public Lcom/futuredial/publicobj/ItemSerializable;
.super Ljava/lang/Object;
.source "ItemSerializable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static m_arStrFileName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/publicobj/ItemSerializable;->m_arStrFileName:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/ItemArray;I)V
    .locals 0
    .parameter "itemArray"
    .parameter "iItemPos"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static ReverseSerializeItem(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/publicobj/Item;
    .locals 4
    .parameter "objApp"
    .parameter "strFileName"

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 50
    .local v1, fin:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v3, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Item;

    .line 52
    .local v2, item:Lcom/futuredial/publicobj/Item;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 53
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v1           #fin:Ljava/io/FileInputStream;
    .end local v2           #item:Lcom/futuredial/publicobj/Item;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 64
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static ReverseSerializePhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "objApp"
    .parameter "strFileName"

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 99
    .local v1, fin:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, strPhoto:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v1           #fin:Ljava/io/FileInputStream;
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .end local v3           #strPhoto:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static SerializeItem(Landroid/content/Context;Lcom/futuredial/publicobj/Item;)V
    .locals 7
    .parameter "objApp"
    .parameter "item"

    .prologue
    .line 25
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fditem_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, strFileName:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 28
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .local v2, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 33
    sget-object v4, Lcom/futuredial/publicobj/ItemSerializable;->m_arStrFileName:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .end local v3           #strFileName:Ljava/lang/String;
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 41
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SerializePhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "objApp"
    .parameter "strPhoto"

    .prologue
    .line 71
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fditem_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, strFileName:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 74
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v2, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 78
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .end local v3           #strFileName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 91
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static removeSerializedFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "objApp"
    .parameter "filepath"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 122
    return-void
.end method
