.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFootprint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x756

.field public static final CREATEDATE_FIELD_NUMBER:I = 0x39d

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x652

.field public static final FOOTPRINTCATEGORIESUPDATED_FIELD_NUMBER:I = 0x7a5

.field public static final FOOTPRINTCATEGORIES_FIELD_NUMBER:I = 0x661

.field public static final FOOTPRINTIMAGESUPDATED_FIELD_NUMBER:I = 0xe3

.field public static final FOOTPRINTIMAGES_FIELD_NUMBER:I = 0xd9

.field public static final FOOTPRINTMEMO_FIELD_NUMBER:I = 0x3f3

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final IMAGEURL_FIELD_NUMBER:I = 0x64c

.field public static final ISPRIVATE_FIELD_NUMBER:I = 0x34f

.field public static final LATITUDE_FIELD_NUMBER:I = 0x223

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x6d

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final NOTE_FIELD_NUMBER:I = 0x2d8

.field public static final PHONENUMBER_FIELD_NUMBER:I = 0x5cd

.field public static final RATING_FIELD_NUMBER:I = 0x19f

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final VOICEMEMOTIME_FIELD_NUMBER:I = 0x7d9

.field public static final WEBSITEURL_FIELD_NUMBER:I = 0x79

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;


# instance fields
.field private address_:Ljava/lang/String;

.field private createDate_:J

.field private description_:Ljava/lang/String;

.field private footprintCategoriesUpdated_:Z

.field private footprintCategories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;",
            ">;"
        }
    .end annotation
.end field

.field private footprintImagesUpdated_:Z

.field private footprintImages_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;",
            ">;"
        }
    .end annotation
.end field

.field private footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

.field private hasAddress:Z

.field private hasCreateDate:Z

.field private hasDescription:Z

.field private hasFootprintCategoriesUpdated:Z

.field private hasFootprintImagesUpdated:Z

.field private hasFootprintMemo:Z

.field private hasId:Z

.field private hasImageUrl:Z

.field private hasIsPrivate:Z

.field private hasLatitude:Z

.field private hasLongitude:Z

.field private hasName:Z

.field private hasNote:Z

.field private hasPhoneNumber:Z

.field private hasRating:Z

.field private hasTimestamp:Z

.field private hasVoiceMemoTime:Z

.field private hasWebsiteURL:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private imageUrl_:Ljava/lang/String;

.field private isPrivate_:Z

.field private latitude_:D

.field private longitude_:D

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private note_:Ljava/lang/String;

.field private phoneNumber_:Ljava/lang/String;

.field private rating_:I

.field private timestamp_:J

.field private voiceMemoTime_:I

.field private websiteURL_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5838
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 7010
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 7014
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 7015
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 5836
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 5860
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;

    .line 5867
    iput-wide v4, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J

    .line 5874
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;

    .line 5880
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    .line 5893
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z

    .line 5899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    .line 5912
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z

    .line 5919
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 5926
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5933
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;

    .line 5940
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z

    .line 5947
    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D

    .line 5954
    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D

    .line 5961
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;

    .line 5968
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;

    .line 5975
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;

    .line 5982
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I

    .line 5989
    iput-wide v4, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J

    .line 5996
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I

    .line 6003
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;

    .line 6090
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->memoizedSerializedSize:I

    .line 5836
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5833
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>()V

    return-void
.end method

.method static synthetic access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z

    return p1
.end method

.method static synthetic access$17202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z

    return p1
.end method

.method static synthetic access$17402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J

    return-wide p1
.end method

.method static synthetic access$17502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z

    return p1
.end method

.method static synthetic access$17602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z

    return p1
.end method

.method static synthetic access$17802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z

    return p1
.end method

.method static synthetic access$17902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z

    return p1
.end method

.method static synthetic access$18002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z

    return p1
.end method

.method static synthetic access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z

    return p1
.end method

.method static synthetic access$18200(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method static synthetic access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z

    return p1
.end method

.method static synthetic access$18400(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z

    return p1
.end method

.method static synthetic access$18602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$18702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z

    return p1
.end method

.method static synthetic access$18802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z

    return p1
.end method

.method static synthetic access$18902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z

    return p1
.end method

.method static synthetic access$19002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$19102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$19302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z

    return p1
.end method

.method static synthetic access$19402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z

    return p1
.end method

.method static synthetic access$20002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I

    return p1
.end method

.method static synthetic access$20102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$20202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$20302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I

    return p1
.end method

.method static synthetic access$20502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z

    return p1
.end method

.method static synthetic access$20602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 5840
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5849
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$16400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 6239
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16700()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6242
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6217
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6223
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6184
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6190
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6229
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6235
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6206
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6212
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6195
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6201
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 5869
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 5844
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5833
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5833
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getFootprintCategories(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "index"

    .prologue
    .line 5887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    return-object v0
.end method

.method public getFootprintCategoriesCount()I
    .locals 1

    .prologue
    .line 5885
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFootprintCategoriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5883
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    return-object v0
.end method

.method public getFootprintCategoriesUpdated()Z
    .locals 1

    .prologue
    .line 5895
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z

    return v0
.end method

.method public getFootprintImages(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "index"

    .prologue
    .line 5906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method public getFootprintImagesCount()I
    .locals 1

    .prologue
    .line 5904
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFootprintImagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    return-object v0
.end method

.method public getFootprintImagesUpdated()Z
    .locals 1

    .prologue
    .line 5914
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z

    return v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 5921
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 5942
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 5949
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 5956
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5970
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 5984
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 6092
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->memoizedSerializedSize:I

    .line 6093
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 6178
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 6095
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 6096
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6097
    const/16 v4, 0x6d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 6100
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6101
    const/16 v4, 0x79

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6104
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 6105
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    const/16 v4, 0xd9

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 6108
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6109
    const/16 v4, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6112
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6113
    const/16 v4, 0x19f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6116
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6117
    const/16 v4, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6120
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6121
    const/16 v4, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6124
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6125
    const/16 v4, 0x223

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 6128
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6129
    const/16 v4, 0x2d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6132
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6133
    const/16 v4, 0x34f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6136
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6137
    const/16 v4, 0x39d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6140
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6141
    const/16 v4, 0x3f3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6144
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 6145
    const/16 v4, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6148
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6149
    const/16 v4, 0x5cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6152
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6153
    const/16 v4, 0x64c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6156
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6157
    const/16 v4, 0x652

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6160
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 6161
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    const/16 v4, 0x661

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 6164
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 6165
    const/16 v4, 0x756

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6168
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 6169
    const/16 v4, 0x7a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6172
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 6173
    const/16 v4, 0x7d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6176
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 6177
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->memoizedSerializedSize:I

    move v3, v2

    .line 6178
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 5991
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J

    return-wide v0
.end method

.method public getVoiceMemoTime()I
    .locals 1

    .prologue
    .line 5998
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I

    return v0
.end method

.method public getWebsiteURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 5861
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    .prologue
    .line 5868
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 5875
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z

    return v0
.end method

.method public hasFootprintCategoriesUpdated()Z
    .locals 1

    .prologue
    .line 5894
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z

    return v0
.end method

.method public hasFootprintImagesUpdated()Z
    .locals 1

    .prologue
    .line 5913
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z

    return v0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    .prologue
    .line 5920
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 5927
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 5934
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z

    return v0
.end method

.method public hasIsPrivate()Z
    .locals 1

    .prologue
    .line 5941
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z

    return v0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 5948
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 5955
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5962
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z

    return v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 5969
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 5976
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 5983
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 5990
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z

    return v0
.end method

.method public hasVoiceMemoTime()Z
    .locals 1

    .prologue
    .line 5997
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z

    return v0
.end method

.method public hasWebsiteURL()Z
    .locals 1

    .prologue
    .line 6004
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5854
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$16500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6008
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z

    if-nez v3, :cond_1

    .line 6022
    :cond_0
    :goto_0
    return v2

    .line 6009
    :cond_1
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z

    if-eqz v3, :cond_0

    .line 6010
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 6011
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6013
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 6014
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 6016
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6017
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6019
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6020
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6022
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 6240
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5833
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5833
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 6244
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5833
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5833
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6027
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6028
    const/16 v2, 0x6d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6030
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6031
    const/16 v2, 0x79

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6033
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 6034
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    const/16 v2, 0xd9

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 6036
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6037
    const/16 v2, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6039
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6040
    const/16 v2, 0x19f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6042
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6043
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6045
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6046
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6048
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6049
    const/16 v2, 0x223

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6051
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6052
    const/16 v2, 0x2d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6054
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6055
    const/16 v2, 0x34f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6057
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6058
    const/16 v2, 0x39d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6060
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6061
    const/16 v2, 0x3f3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 6063
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6064
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 6066
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6067
    const/16 v2, 0x5cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6069
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6070
    const/16 v2, 0x64c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6072
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6073
    const/16 v2, 0x652

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6075
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 6076
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    const/16 v2, 0x661

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    .line 6078
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6079
    const/16 v2, 0x756

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6081
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6082
    const/16 v2, 0x7a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6084
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6085
    const/16 v2, 0x7d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6087
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 6088
    return-void
.end method
