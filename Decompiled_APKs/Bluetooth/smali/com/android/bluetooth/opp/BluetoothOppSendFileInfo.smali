.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothOppSendFileInfo"

.field private static final V:Z


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mDestAddr:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "type"
    .parameter "length"
    .parameter "status"
    .parameter "dest"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 94
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 95
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 96
    iput-object p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .parameter "type"
    .parameter "length"
    .parameter "inputStream"
    .parameter "status"
    .parameter "dest"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 80
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 81
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 82
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 83
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 19
    .parameter "context"
    .parameter "uri"
    .parameter "type"
    .parameter "dest"

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 102
    .local v1, contentResolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 103
    .local v2, u:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 104
    .local v18, scheme:Ljava/lang/String;
    const/4 v14, 0x0

    .line 105
    .local v14, fileName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 106
    .local v11, contentType:Ljava/lang/String;
    const-wide/16 v15, 0x0

    .line 110
    .local v15, length:J
    const-string v3, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 112
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_size"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 115
    .local v17, metadataCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 117
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 119
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    int-to-long v6, v3

    .line 123
    .end local v15           #length:J
    .local v6, length:J
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :goto_1
    move-wide v15, v6

    .line 138
    .end local v6           #length:J
    .end local v17           #metadataCursor:Landroid/database/Cursor;
    .restart local v15       #length:J
    :goto_2
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    check-cast v8, Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .local v8, is:Ljava/io/FileInputStream;
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-nez v3, :cond_2

    .line 148
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    int-to-long v6, v3

    .line 157
    .end local v15           #length:J
    .restart local v6       #length:J
    :goto_3
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v9, 0x0

    move-object v4, v14

    move-object v5, v11

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    .end local v8           #is:Ljava/io/FileInputStream;
    :goto_4
    return-object v3

    .line 123
    .end local v6           #length:J
    .restart local v15       #length:J
    .restart local v17       #metadataCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 126
    .end local v17           #metadataCursor:Landroid/database/Cursor;
    :cond_0
    const-string v3, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 128
    move-object/from16 v11, p2

    .line 129
    new-instance v13, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v13, f:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    .end local v15           #length:J
    .restart local v6       #length:J
    move-wide v15, v6

    .line 131
    .end local v6           #length:J
    .restart local v15       #length:J
    goto :goto_2

    .line 133
    .end local v13           #f:Ljava/io/File;
    :cond_1
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-wide v6, v15

    .end local v15           #length:J
    .restart local v6       #length:J
    goto :goto_4

    .line 139
    .end local v6           #length:J
    .restart local v15       #length:J
    :catch_0
    move-exception v12

    .line 140
    .local v12, e:Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-wide v6, v15

    .end local v15           #length:J
    .restart local v6       #length:J
    goto :goto_4

    .line 150
    .end local v6           #length:J
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v8       #is:Ljava/io/FileInputStream;
    .restart local v15       #length:J
    :catch_1
    move-exception v12

    .line 151
    .local v12, e:Ljava/io/IOException;
    const-string v3, "BluetoothOppSendFileInfo"

    const-string v4, "Read stream exception: "

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    .end local v8           #is:Ljava/io/FileInputStream;
    move-wide v6, v15

    .end local v15           #length:J
    .restart local v6       #length:J
    goto :goto_4

    .end local v6           #length:J
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #is:Ljava/io/FileInputStream;
    .restart local v15       #length:J
    :cond_2
    move-wide v6, v15

    .end local v15           #length:J
    .restart local v6       #length:J
    goto :goto_3

    .end local v6           #length:J
    .end local v8           #is:Ljava/io/FileInputStream;
    .restart local v15       #length:J
    .restart local v17       #metadataCursor:Landroid/database/Cursor;
    :cond_3
    move-wide v6, v15

    .end local v15           #length:J
    .restart local v6       #length:J
    goto :goto_0

    .end local v6           #length:J
    .restart local v15       #length:J
    :cond_4
    move-wide v6, v15

    .end local v15           #length:J
    .restart local v6       #length:J
    goto :goto_1
.end method
