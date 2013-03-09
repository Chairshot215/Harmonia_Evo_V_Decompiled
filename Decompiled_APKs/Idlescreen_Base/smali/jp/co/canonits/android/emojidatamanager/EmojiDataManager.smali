.class public Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;
.super Ljava/lang/Object;
.source "EmojiDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;,
        Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;,
        Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "jp.co.canonits.android.emojidisplayprovider.emojidatamanager"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EmojiDataManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mListener:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;

    .line 25
    return-void
.end method

.method static synthetic access$0(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;)Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mListener:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;

    return-object v0
.end method

.method public static canUseEmoji(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 151
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/jp.co.canonits.android.emojidisplayprovider/copy_complete.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    .line 156
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 144
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/jp.co.canonits.android.emojidisplayprovider/files/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getData(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 133
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/jp.co.canonits.android.emojidisplayprovider/files/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    move-object v1, v2

    .line 139
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public makeEmoji(Landroid/content/Context;Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 163
    iput-object p1, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->mListener:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$OnCompletionListener;

    .line 165
    new-instance v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;

    invoke-direct {v0, p0, v3}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;-><init>(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;)V

    .line 166
    .local v0, cpt:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    .end local v0           #cpt:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;
    :cond_0
    return-void
.end method
