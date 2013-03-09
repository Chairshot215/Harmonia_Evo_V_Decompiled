.class public Lcom/google/android/finsky/navigationmanager/NavigationState;
.super Ljava/lang/Object;
.source "NavigationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final backstackName:Ljava/lang/String;

.field public final pageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState$1;

    invoke-direct {v0}, Lcom/google/android/finsky/navigationmanager/NavigationState$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "pageType"

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41dfffffff800000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "pageType"
    .parameter "backstackName"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/android/finsky/navigationmanager/NavigationState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
