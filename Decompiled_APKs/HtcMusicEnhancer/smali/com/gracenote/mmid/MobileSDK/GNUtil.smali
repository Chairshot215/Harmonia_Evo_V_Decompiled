.class public Lcom/gracenote/mmid/MobileSDK/GNUtil;
.super Ljava/lang/Object;
.source "GNUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendUTF8(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 119
    .local v3, out:Ljava/io/OutputStreamWriter;
    const/4 v5, 0x0

    .line 122
    .local v5, success:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v2, p0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF8"

    invoke-direct {v4, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 124
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .local v4, out:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 125
    const/4 v5, 0x1

    .line 129
    if-eqz v4, :cond_4

    .line 131
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .line 144
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v5

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v3, :cond_1

    .line 131
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 135
    :cond_1
    if-eqz v1, :cond_0

    .line 137
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 138
    :catch_2
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 129
    :goto_2
    if-eqz v3, :cond_3

    .line 131
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 142
    :cond_2
    :goto_3
    throw v6

    .line 132
    :catch_3
    move-exception v0

    .line 133
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    if-eqz v1, :cond_2

    .line 137
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 138
    :catch_4
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    .line 133
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :cond_4
    if-eqz v2, :cond_5

    .line 137
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 138
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 128
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 126
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static readUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filename"

    .prologue
    const/16 v9, 0x1000

    .line 26
    const/16 v0, 0x1000

    .line 27
    .local v0, BUFSIZE:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .local v2, data:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 29
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 32
    .local v6, isr:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 33
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v9, "UTF8"

    invoke-direct {v7, v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 35
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .local v7, isr:Ljava/io/InputStreamReader;
    const/16 v9, 0x1000

    :try_start_2
    new-array v1, v9, [C

    .line 37
    .local v1, buffer:[C
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x1000

    invoke-virtual {v7, v1, v9, v10}, Ljava/io/InputStreamReader;->read([CII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    .local v8, n:I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 43
    if-eqz v7, :cond_5

    .line 45
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 58
    .end local v1           #buffer:[C
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #n:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 38
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #buffer:[C
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    .restart local v8       #n:I
    :cond_1
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v2, v1, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 40
    .end local v1           #buffer:[C
    .end local v8           #n:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 41
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    if-eqz v6, :cond_2

    .line 45
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 46
    :catch_1
    move-exception v3

    .line 47
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 49
    :cond_2
    if-eqz v4, :cond_0

    .line 51
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 52
    :catch_2
    move-exception v3

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 43
    :goto_3
    if-eqz v6, :cond_4

    .line 45
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 56
    :cond_3
    :goto_4
    throw v9

    .line 46
    :catch_3
    move-exception v3

    .line 47
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 49
    .end local v3           #e:Ljava/io/IOException;
    :cond_4
    if-eqz v4, :cond_3

    .line 51
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 52
    :catch_4
    move-exception v3

    .line 53
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 46
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #buffer:[C
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    .restart local v8       #n:I
    :catch_5
    move-exception v3

    .line 47
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 49
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :cond_5
    if-eqz v5, :cond_6

    .line 51
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 52
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catch_6
    move-exception v3

    .line 53
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 42
    .end local v1           #buffer:[C
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v8           #n:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 40
    :catch_7
    move-exception v3

    goto :goto_2

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static writeUTF8(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 76
    .local v3, out:Ljava/io/OutputStreamWriter;
    const/4 v5, 0x0

    .line 79
    .local v5, success:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF8"

    invoke-direct {v4, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 81
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .local v4, out:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 82
    const/4 v5, 0x1

    .line 86
    if-eqz v4, :cond_4

    .line 88
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .line 101
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v5

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    if-eqz v3, :cond_1

    .line 88
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 92
    :cond_1
    if-eqz v1, :cond_0

    .line 94
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 95
    :catch_2
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 86
    :goto_2
    if-eqz v3, :cond_3

    .line 88
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 99
    :cond_2
    :goto_3
    throw v6

    .line 89
    :catch_3
    move-exception v0

    .line 90
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 92
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    if-eqz v1, :cond_2

    .line 94
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 95
    :catch_4
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 89
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    .line 90
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :cond_4
    if-eqz v2, :cond_5

    .line 94
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 95
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 85
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 83
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v3       #out:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
