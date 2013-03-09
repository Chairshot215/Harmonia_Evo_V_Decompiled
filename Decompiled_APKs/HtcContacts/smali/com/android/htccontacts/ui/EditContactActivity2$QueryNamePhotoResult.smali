.class Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryNamePhotoResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPKEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final MAPKEY_FAMILY_NAME:Ljava/lang/String; = "family_name"

.field public static final MAPKEY_GIVEN_NAME:Ljava/lang/String; = "given_name"

.field public static final MAPKEY_MIDDLE_NAME:Ljava/lang/String; = "middle_name"

.field public static final MAPKEY_PHONETIC_FAMILY_NAME:Ljava/lang/String; = "phonetic_family_name"

.field public static final MAPKEY_PHONETIC_GIVEN_NAME:Ljava/lang/String; = "phonetic_given_name"

.field public static final MAPKEY_PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "phonetic_middle_name"

.field public static final MAPKEY_PREFIX_NAME:Ljava/lang/String; = "prefix_name"

.field public static final MAPKEY_SUFFIX_NAME:Ljava/lang/String; = "suffix_name"


# instance fields
.field displayType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field googlePlusDisplayType:Ljava/lang/String;

.field googlePlusRawContactName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field googlePlusRawContactName_Id:Ljava/lang/Long;

.field googlePlusRawContactPhoto:Landroid/graphics/Bitmap;

.field googlePlusRawContactPhoto_Id:Ljava/lang/Long;

.field googlePlusRawContactReadOnlyAccountType:Ljava/lang/Boolean;

.field googlePlusRawContact_Id:Ljava/lang/Long;

.field lContactId:J

.field lContactNameId:J

.field lContactPhoto_id:J

.field rawContactName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field rawContactName_Id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field rawContactPhoto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field rawContactPhoto_Id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field rawContactReadOnlyAccountType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field rawContact_Id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field sContactName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1809
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult$1;

    invoke-direct {v0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult$1;-><init>()V

    sput-object v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1751
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    iput-wide v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactId:J

    .line 1753
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    .line 1754
    iput-wide v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    .line 1755
    iput-wide v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactPhoto_id:J

    .line 1757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    .line 1758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    .line 1759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    .line 1772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName_Id:Ljava/util/ArrayList;

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    .line 1775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    .line 1778
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContact_Id:Ljava/lang/Long;

    .line 1779
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusDisplayType:Ljava/lang/String;

    .line 1780
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    .line 1781
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName_Id:Ljava/lang/Long;

    .line 1782
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto:Landroid/graphics/Bitmap;

    .line 1783
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto_Id:Ljava/lang/Long;

    .line 1784
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactReadOnlyAccountType:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1751
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1751
    invoke-static {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->readFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .locals 8
    .parameter "source"

    .prologue
    .line 1823
    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    invoke-direct {v2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;-><init>()V

    .line 1824
    .local v2, dest:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactId:J

    .line 1825
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    .line 1826
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    .line 1827
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactPhoto_id:J

    .line 1829
    const-class v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1830
    .local v3, longLoader:Ljava/lang/ClassLoader;
    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1831
    .local v5, stringLoader:Ljava/lang/ClassLoader;
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1832
    .local v4, mapLoader:Ljava/lang/ClassLoader;
    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1833
    .local v0, bitmapLoader:Ljava/lang/ClassLoader;
    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1835
    .local v1, booleanLoader:Ljava/lang/ClassLoader;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    .line 1837
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    .line 1839
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    .line 1841
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName_Id:Ljava/util/ArrayList;

    .line 1842
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    .line 1843
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    .line 1844
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    .line 1845
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1792
    iget-wide v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1793
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1794
    iget-wide v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1795
    iget-wide v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactPhoto_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1797
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1798
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1799
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1801
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName_Id:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1802
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1803
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1804
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1807
    return-void
.end method
