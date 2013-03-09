.class public Lcom/android/settings/framework/io/HtcObjectParcelization;
.super Ljava/lang/Object;
.source "HtcObjectParcelization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static marshall(Ljava/lang/String;Landroid/os/Parcelable;)Ljava/lang/Exception;
    .locals 5
    .parameter "fileName"
    .parameter "object"

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 88
    .local v3, parcel:Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 93
    .local v0, data:[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    const/4 v1, 0x0

    .end local v0           #data:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #parcel:Landroid/os/Parcel;
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 98
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static unmarshall(Ljava/lang/String;)Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 115
    const/16 v7, 0x80

    new-array v2, v7, [B

    .line 120
    .local v2, buffer:[B
    new-instance v3, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;

    invoke-direct {v3}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;-><init>()V

    .line 123
    .local v3, content:Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, length:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 127
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 145
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #length:I
    :catch_0
    move-exception v4

    .line 146
    .local v4, e:Ljava/io/FileNotFoundException;
    #setter for: Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;
    invoke-static {v3, v4}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->access$102(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 150
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-object v3

    .line 129
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #length:I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 137
    .local v6, parcel:Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 142
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    #setter for: Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mParcel:Landroid/os/Parcel;
    invoke-static {v3, v6}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->access$002(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Landroid/os/Parcel;)Landroid/os/Parcel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 147
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #length:I
    .end local v6           #parcel:Landroid/os/Parcel;
    :catch_1
    move-exception v4

    .line 148
    .local v4, e:Ljava/io/IOException;
    #setter for: Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;
    invoke-static {v3, v4}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->access$102(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_1
.end method
