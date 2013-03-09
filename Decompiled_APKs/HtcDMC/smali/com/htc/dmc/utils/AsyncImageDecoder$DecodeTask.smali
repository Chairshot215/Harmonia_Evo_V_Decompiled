.class Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field private mAlbumId:I

.field private mArg0:Ljava/lang/Object;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mKey:I

.field private mPath:Ljava/lang/String;

.field private mPosition:I

.field private mTimeStamp:J

.field final synthetic this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;


# direct methods
.method public constructor <init>(Lcom/htc/dmc/utils/AsyncImageDecoder;IIILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 781
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 765
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 766
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 767
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 769
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 770
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 771
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 782
    iput p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 783
    iput p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 785
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 786
    iput-object p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 787
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/utils/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 789
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 765
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 766
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 767
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 769
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 770
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 771
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 790
    iput p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 791
    iput-object p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 793
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 794
    iput-object p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 795
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/utils/AsyncImageDecoder;ILjava/lang/String;IILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 797
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 765
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 766
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 767
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 769
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 770
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 771
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 798
    iput p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 799
    iput-object p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 800
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 802
    iput p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 803
    iput-object p6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 804
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/utils/AsyncImageDecoder;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 773
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 765
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 766
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 767
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 769
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 770
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 771
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 774
    iput p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 775
    iput-object p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 777
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 778
    iput-object p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 779
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/utils/AsyncImageDecoder;Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)V
    .locals 4
    .parameter
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 806
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 765
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 766
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 767
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 769
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 770
    iput v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 771
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    .line 807
    if-nez p2, :cond_0

    .line 817
    :goto_0
    return-void

    .line 810
    :cond_0
    iget v0, p2, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 811
    iget-object v0, p2, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 812
    iget v0, p2, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 813
    iget-object v0, p2, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 815
    iget v0, p2, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 816
    iget-object v0, p2, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 763
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 763
    iget-wide v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 821
    instance-of v2, p1, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    if-nez v2, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 824
    check-cast v0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    .line 825
    .local v0, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    iget v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    iget v3, v0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, ", mRequestTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-wide v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
