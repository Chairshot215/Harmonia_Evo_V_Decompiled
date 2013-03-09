.class public Lcom/htc/ml/PhotoLockScreen/PLSSetting;
.super Ljava/lang/Object;
.source "PLSSetting.java"


# static fields
.field public static DBSaving:Z = false

.field public static final Image_Args:Ljava/lang/String; = "image_args_"

.field public static final Image_Args_Number:Ljava/lang/String; = "image_args_number"

.field public static final Image_Available:Ljava/lang/String; = "image_available"

.field public static final Image_Uri:Ljava/lang/String; = "image_uri"

.field public static final Image_Where:Ljava/lang/String; = "image_where"

.field public static final SHARED_NAME:Ljava/lang/String; = "PhotoLockScreen_Shared"

.field public static ThreeDCount:I = 0x0

.field public static final Video_Args:Ljava/lang/String; = "video_args_"

.field public static final Video_Args_Number:Ljava/lang/String; = "video_args_number"

.field public static final Video_Available:Ljava/lang/String; = "video_available"

.field public static final Video_Uri:Ljava/lang/String; = "video_uri"

.field public static final Video_Where:Ljava/lang/String; = "video_where"

.field private static mDBHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper;

.field private static mInstance:Lcom/htc/ml/PhotoLockScreen/PLSSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;

    invoke-direct {v0}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;-><init>()V

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->mInstance:Lcom/htc/ml/PhotoLockScreen/PLSSetting;

    .line 18
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;

    invoke-direct {v0}, Lcom/htc/ml/PhotoLockScreen/DBHelper;-><init>()V

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->mDBHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper;

    .line 19
    sput v1, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    .line 20
    sput-boolean v1, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->DBSaving:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static QuitSavingDB()V
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->mDBHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->QuitSavingDB:Z

    .line 339
    return-void
.end method

.method public static getListMediaStore([Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;)Ljava/util/List;
    .locals 9
    .parameter "ImageTSC"
    .parameter "VideoTSC"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;",
            "[",
            "Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 144
    .local v0, arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 146
    :try_start_0
    array-length v6, p0

    if-lez v6, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v0           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .local v1, arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :try_start_1
    array-length v6, p0

    array-length v7, p1

    add-int/2addr v6, v7

    new-array v5, v6, [Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    .line 151
    .local v5, tsc:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    if-eqz v5, :cond_d

    .line 153
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, p0

    array-length v7, p1

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    .line 155
    array-length v6, p0

    if-ge v3, v6, :cond_0

    .line 156
    aget-object v6, p0, v3

    aput-object v6, v5, v3

    .line 153
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_0
    array-length v6, p0

    sub-int v6, v3, v6

    aget-object v6, p1, v6

    aput-object v6, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 229
    .end local v3           #i:I
    .end local v5           #tsc:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 231
    .end local v1           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v0       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const-string v6, "brian_LiveGallery_IdleScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetting() - Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v0

    .line 161
    .end local v0           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v1       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v3       #i:I
    .restart local v5       #tsc:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    :cond_2
    :try_start_2
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 162
    const/4 v3, 0x0

    :goto_4
    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 164
    aget-object v6, v5, v3

    iget-object v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 166
    new-instance v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-direct {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;-><init>()V

    .line 167
    .local v4, ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    if-eqz v4, :cond_3

    .line 169
    aget-object v6, v5, v3

    iget-object v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setPath(Ljava/lang/String;)V

    .line 170
    aget-object v6, v5, v3

    iget-boolean v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->isImage:Z

    invoke-virtual {v4, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setImage(Z)V

    .line 171
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v4           #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 175
    :cond_4
    sget v6, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    goto :goto_5

    .line 177
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-nez v6, :cond_d

    .line 178
    const/4 v0, 0x0

    .end local v1           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v0       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    goto :goto_3

    .line 182
    .end local v3           #i:I
    .end local v5           #tsc:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    :cond_6
    if-eqz p0, :cond_a

    .line 184
    :try_start_3
    array-length v6, p0

    if-lez v6, :cond_1

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    .end local v0           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v1       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    :try_start_4
    array-length v6, p0

    if-ge v3, v6, :cond_9

    .line 189
    aget-object v6, p0, v3

    iget-object v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 191
    new-instance v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-direct {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;-><init>()V

    .line 192
    .restart local v4       #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    if-eqz v4, :cond_7

    .line 194
    aget-object v6, p0, v3

    iget-object v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setPath(Ljava/lang/String;)V

    .line 195
    aget-object v6, p0, v3

    iget-boolean v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->isImage:Z

    invoke-virtual {v4, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setImage(Z)V

    .line 196
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v4           #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 200
    :cond_8
    sget v6, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    goto :goto_7

    .line 202
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    if-nez v6, :cond_d

    .line 203
    const/4 v0, 0x0

    .end local v1           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v0       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    goto/16 :goto_3

    .line 206
    .end local v3           #i:I
    :cond_a
    if-eqz p1, :cond_1

    .line 208
    :try_start_5
    array-length v6, p1

    if-lez v6, :cond_1

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 211
    .end local v0           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v1       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_8
    :try_start_6
    array-length v6, p1

    if-ge v3, v6, :cond_c

    .line 213
    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 215
    new-instance v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-direct {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;-><init>()V

    .line 216
    .restart local v4       #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setPath(Ljava/lang/String;)V

    .line 217
    aget-object v6, p1, v3

    iget-boolean v6, v6, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->isImage:Z

    invoke-virtual {v4, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setImage(Z)V

    .line 218
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v4           #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 221
    :cond_b
    sget v6, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    goto :goto_9

    .line 224
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v6

    if-nez v6, :cond_d

    .line 225
    const/4 v0, 0x0

    .end local v1           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v0       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    goto/16 :goto_3

    .line 229
    .end local v3           #i:I
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .end local v0           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v1       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :cond_d
    move-object v0, v1

    .end local v1           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v0       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    goto/16 :goto_3
.end method

.method public static getSetting(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v1, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->mInstance:Lcom/htc/ml/PhotoLockScreen/PLSSetting;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->mDBHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper;

    invoke-virtual {v0, p0}, Lcom/htc/ml/PhotoLockScreen/DBHelper;->getMediaFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static saveMediaStoreToDB(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->DBSaving:Z

    .line 332
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->mDBHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper;

    invoke-virtual {v0, p0, p1}, Lcom/htc/ml/PhotoLockScreen/DBHelper;->saveMediaToDB(Landroid/content/Context;Ljava/util/List;)V

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->DBSaving:Z

    .line 334
    return-void
.end method

.method public static saveSetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "data"

    .prologue
    .line 44
    const-string v12, "PhotoLockScreen_Shared"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 45
    .local v11, prefer:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v12, "image_uri"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    move-object v4, v12

    check-cast v4, Landroid/net/Uri;

    .line 47
    .local v4, mImageURI:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, mStrImageURI:Ljava/lang/String;
    const-string v12, "image_where"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, mImageWhere:Ljava/lang/String;
    const-string v12, "image_args"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, mImageArgs:[Ljava/lang/String;
    const-string v12, "image_available"

    const/4 v13, 0x1

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v12, "image_uri"

    invoke-interface {v0, v12, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v12, "image_where"

    invoke-interface {v0, v12, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    if-eqz v3, :cond_0

    .line 61
    const-string v12, "image_args_number"

    array-length v13, v3

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 64
    .local v2, key:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    array-length v12, v3

    if-ge v1, v12, :cond_1

    .line 67
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image_args_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    aget-object v12, v3, v1

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1           #ii:I
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    const-string v12, "image_args_number"

    const/4 v13, 0x0

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    .end local v3           #mImageArgs:[Ljava/lang/String;
    .end local v5           #mImageWhere:Ljava/lang/String;
    .end local v6           #mStrImageURI:Ljava/lang/String;
    :goto_1
    const-string v12, "video_uri"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    move-object v9, v12

    check-cast v9, Landroid/net/Uri;

    .line 83
    .local v9, mVideoURI:Landroid/net/Uri;
    if-eqz v9, :cond_5

    .line 85
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, mStrVideoURI:Ljava/lang/String;
    const-string v12, "video_where"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, mVideoWhere:Ljava/lang/String;
    const-string v12, "video_args"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, mVideoArgs:[Ljava/lang/String;
    const-string v12, "video_available"

    const/4 v13, 0x1

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v12, "video_uri"

    invoke-interface {v0, v12, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v12, "video_where"

    invoke-interface {v0, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    if-eqz v8, :cond_3

    .line 97
    const-string v12, "video_args_number"

    array-length v13, v8

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 99
    .restart local v2       #key:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #ii:I
    :goto_2
    array-length v12, v8

    if-ge v1, v12, :cond_4

    .line 102
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_args_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    aget-object v12, v8, v1

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    .end local v1           #ii:I
    .end local v2           #key:Ljava/lang/String;
    .end local v7           #mStrVideoURI:Ljava/lang/String;
    .end local v8           #mVideoArgs:[Ljava/lang/String;
    .end local v9           #mVideoURI:Landroid/net/Uri;
    .end local v10           #mVideoWhere:Ljava/lang/String;
    :cond_2
    const-string v12, "image_available"

    const/4 v13, 0x0

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 107
    .restart local v7       #mStrVideoURI:Ljava/lang/String;
    .restart local v8       #mVideoArgs:[Ljava/lang/String;
    .restart local v9       #mVideoURI:Landroid/net/Uri;
    .restart local v10       #mVideoWhere:Ljava/lang/String;
    :cond_3
    const-string v12, "video_args_number"

    const/4 v13, 0x0

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    .end local v7           #mStrVideoURI:Ljava/lang/String;
    .end local v8           #mVideoArgs:[Ljava/lang/String;
    .end local v10           #mVideoWhere:Ljava/lang/String;
    :goto_3
    return-void

    .line 119
    :cond_5
    const-string v12, "video_available"

    const/4 v13, 0x0

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    const-string v12, "brian_LiveGallery_IdleScreen"

    const-string v13, "mVideoURI = null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static setSetting(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 16
    .parameter "context"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, ImageTSC:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    const/4 v2, 0x0

    .line 250
    .local v2, VideoTSC:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    const/4 v14, 0x0

    sput v14, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->ThreeDCount:I

    .line 252
    const-string v14, "image_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    move-object v6, v14

    check-cast v6, Landroid/net/Uri;

    .line 253
    .local v6, mImageURI:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 255
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, mStrImageURI:Ljava/lang/String;
    const-string v14, "image_where"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, mImageWhere:Ljava/lang/String;
    const-string v14, "image_args"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, mImageArgs:[Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v8, mIntent:Landroid/content/Intent;
    const-string v14, "image_uri"

    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v14, "image_where"

    invoke-virtual {v8, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    if-eqz v5, :cond_0

    .line 268
    const-string v14, "image_args_number"

    array-length v15, v5

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 271
    .local v4, key:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_0
    array-length v14, v5

    if-ge v3, v14, :cond_0

    .line 274
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "image_args_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    aget-object v14, v5, v3

    invoke-virtual {v8, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v3           #ii:I
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->parserImageSrc(Landroid/content/Context;Landroid/content/Intent;)[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    move-result-object v1

    .line 287
    .end local v5           #mImageArgs:[Ljava/lang/String;
    .end local v7           #mImageWhere:Ljava/lang/String;
    .end local v8           #mIntent:Landroid/content/Intent;
    .end local v9           #mStrImageURI:Ljava/lang/String;
    :cond_1
    const-string v14, "video_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    move-object v12, v14

    check-cast v12, Landroid/net/Uri;

    .line 288
    .local v12, mVideoURI:Landroid/net/Uri;
    if-eqz v12, :cond_3

    .line 290
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, mStrVideoURI:Ljava/lang/String;
    const-string v14, "video_where"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 292
    .local v13, mVideoWhere:Ljava/lang/String;
    const-string v14, "video_args"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 297
    .local v11, mVideoArgs:[Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 298
    .restart local v8       #mIntent:Landroid/content/Intent;
    const-string v14, "video_uri"

    invoke-virtual {v8, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v14, "video_where"

    invoke-virtual {v8, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    if-eqz v11, :cond_2

    .line 302
    const-string v14, "video_args_number"

    array-length v15, v11

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 304
    .restart local v4       #key:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #ii:I
    :goto_1
    array-length v14, v11

    if-ge v3, v14, :cond_2

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video_args_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    aget-object v14, v11, v3

    invoke-virtual {v8, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    .end local v3           #ii:I
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->parserVideoSrc(Landroid/content/Context;Landroid/content/Intent;)[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    move-result-object v2

    .line 324
    .end local v8           #mIntent:Landroid/content/Intent;
    .end local v10           #mStrVideoURI:Ljava/lang/String;
    .end local v11           #mVideoArgs:[Ljava/lang/String;
    .end local v13           #mVideoWhere:Ljava/lang/String;
    :goto_2
    invoke-static {v1, v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->getListMediaStore([Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;)Ljava/util/List;

    move-result-object v14

    return-object v14

    .line 321
    :cond_3
    const-string v14, "brian_LiveGallery_IdleScreen"

    const-string v15, "mVideoURI = null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static setSetting(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "imageSrc"
    .parameter "videoSrc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, ImageTSC:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    const/4 v1, 0x0

    .line 130
    .local v1, VideoTSC:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    if-eqz p1, :cond_0

    .line 131
    invoke-static {p0, p1}, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->parserImageSrc(Landroid/content/Context;Landroid/content/Intent;)[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    move-result-object v0

    .line 132
    :cond_0
    if-eqz p2, :cond_1

    .line 133
    invoke-static {p0, p2}, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->parserVideoSrc(Landroid/content/Context;Landroid/content/Intent;)[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    move-result-object v1

    .line 135
    :cond_1
    invoke-static {v0, v1}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->getListMediaStore([Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
