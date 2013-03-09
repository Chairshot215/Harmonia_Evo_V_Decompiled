.class public Lcom/htc/android/mail/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MediaInfo$1;,
        Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;,
        Lcom/htc/android/mail/MediaInfo$MediaTag;,
        Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_AUDIO:I = 0x1

.field public static final FILE_TYPE_UNKNOWN:I = 0x0

.field public static final FILE_TYPE_VIDEO:I = 0x2

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaInfo"

.field private static libloaded:Z


# instance fields
.field private mCaseInsensitivePaths:Z

.field private mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/MediaInfo$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeContext:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MediaInfo$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    sput-boolean v4, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    .line 68
    sput-boolean v5, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    .line 70
    :try_start_0
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "htcMail_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v0, ex:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x7e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Blues"

    aput-object v2, v1, v4

    const-string v2, "Classic Rock"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "Country"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Dance"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Disco"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Funk"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Grunge"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Hip-Hop"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Jazz"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Metal"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "New Age"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Oldies"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Other"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Pop"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "R&B"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "Rap"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Reggae"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Techno"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Industrial"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Alternative"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Ska"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Death Metal"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Pranks"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "Soundtrack"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "Euro-Techno"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "Ambient"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "Trip-Hop"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "Vocal"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "Jazz+Funk"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "Fusion"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Trance"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "Classical"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "Instrumental"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Acid"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "House"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "Game"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "Sound Clip"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "Gospel"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "Noise"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "AlternRock"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "Bass"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "Soul"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Punk"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "Space"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "Meditative"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "Instrumental Pop"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "Instrumental Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "Ethnic"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "Gothic"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "Darkwave"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "Techno-Industrial"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "Electronic"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "Pop-Folk"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "Eurodance"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "Dream"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "Southern Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "Comedy"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "Cult"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "Gangsta"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "Top 40"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "Christian Rap"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "Pop/Funk"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "Jungle"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "Native American"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "Cabaret"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "New Wave"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "Psychadelic"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "Rave"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "Showtunes"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "Trailer"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "Lo-Fi"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "Tribal"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "Acid Punk"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "Acid Jazz"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "Polka"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "Retro"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "Musical"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "Rock & Roll"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "Hard Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "Folk"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "Folk-Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "National Folk"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "Swing"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "Fast Fusion"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "Bebob"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "Latin"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "Revival"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "Celtic"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "Bluegrass"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "Avantgarde"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "Gothic Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "Progressive Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "Psychedelic Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "Symphonic Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "Slow Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "Big Band"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "Chorus"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "Easy Listening"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "Acoustic"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "Humour"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "Speech"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "Chanson"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "Opera"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "Chamber Music"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "Sonata"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "Symphony"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "Booty Bass"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "Primus"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "Porn Groove"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "Satire"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "Slow Jam"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "Club"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "Tango"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "Samba"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "Folklore"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "Ballad"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "Power Ballad"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "Rhythmic Soul"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "Freestyle"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "Duet"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "Punk Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "Drum Solo"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "A capella"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "Euro-House"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "Dance Hall"

    aput-object v3, v1, v2

    sput-object v1, Lcom/htc/android/mail/MediaInfo;->ID3_GENRES:[Ljava/lang/String;

    return-void

    .line 72
    .end local v0           #ex:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 73
    .restart local v0       #ex:Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v4, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    .line 74
    const-string v1, "MediaInfo"

    const-string v2, "htcMail_jni UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;-><init>(Lcom/htc/android/mail/MediaInfo;Lcom/htc/android/mail/MediaInfo$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    .line 268
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaInfo> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-boolean v0, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/htc/android/mail/MediaInfo;->native_setup()V

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/MediaInfo;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MediaInfo;->mCaseInsensitivePaths:Z

    .line 276
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MediaInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/android/mail/MediaInfo;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MediaInfo;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MediaInfo;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/htc/android/mail/MediaInfo;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method private native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 623
    sget-boolean v0, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MediaInfo;->native_finalize()V

    goto :goto_0
.end method

.method public getFileType(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 589
    const-string v4, "MediaInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-boolean v4, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    if-nez v4, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v2

    .line 592
    :cond_1
    const-string v4, "MediaInfo"

    const-string v5, "enter get"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Lcom/htc/android/mail/MediaFile;->getFileType(Ljava/lang/String;)Lcom/htc/android/mail/MediaFile$MediaFileType;

    move-result-object v1

    .line 594
    .local v1, mediaFileType:Lcom/htc/android/mail/MediaFile$MediaFileType;
    if-eqz v1, :cond_0

    .line 597
    iget v0, v1, Lcom/htc/android/mail/MediaFile$MediaFileType;->fileType:I

    .line 598
    .local v0, fileType:I
    const/16 v4, 0x15

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    const/16 v4, 0x17

    if-eq v0, v4, :cond_2

    const/16 v4, 0x18

    if-ne v0, v4, :cond_3

    .line 600
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v4}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->reset()V

    .line 601
    const-string v4, ""

    iget-object v5, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-direct {p0, p1, v4, v5}, Lcom/htc/android/mail/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 602
    iget-object v4, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v4}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 605
    :cond_3
    invoke-static {v0}, Lcom/htc/android/mail/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 606
    const/4 v2, 0x1

    goto :goto_0

    .line 607
    :cond_4
    invoke-static {v0}, Lcom/htc/android/mail/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 608
    goto :goto_0
.end method

.method public parseSingleFile(Ljava/lang/String;)Lcom/htc/android/mail/MediaInfo$MediaTag;
    .locals 8
    .parameter "path"

    .prologue
    .line 552
    sget-boolean v0, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 584
    :goto_0
    return-object v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v0}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->reset()V

    .line 556
    const-string v0, ""

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/android/mail/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 558
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v0}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v0}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->getAlbum()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, album:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo;->mClient:Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v0}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->getArtist()Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, artist:Ljava/lang/String;
    move-object v5, p1

    .line 564
    .local v5, filename:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 565
    .local v7, lastSlash:I
    if-ltz v7, :cond_1

    .line 566
    add-int/lit8 v7, v7, 0x1

    .line 567
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 568
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 572
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 573
    .local v6, lastDot:I
    if-lez v6, :cond_2

    .line 574
    const/4 v0, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 577
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    const-string v2, "<unknown>"

    .line 579
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    const-string v3, "<unknown>"

    .line 581
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 582
    const-string v4, "<unknown>"

    .line 584
    :cond_5
    new-instance v0, Lcom/htc/android/mail/MediaInfo$MediaTag;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MediaInfo$MediaTag;-><init>(Lcom/htc/android/mail/MediaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 1

    .prologue
    .line 629
    sget-boolean v0, Lcom/htc/android/mail/MediaInfo;->libloaded:Z

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MediaInfo;->native_setup()V

    goto :goto_0
.end method
