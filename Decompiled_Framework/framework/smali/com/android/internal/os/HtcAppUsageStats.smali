.class public Lcom/android/internal/os/HtcAppUsageStats;
.super Ljava/lang/Object;
.source "HtcAppUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/os/HtcIfAppUsageStats;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/HtcAppUsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appName:Ljava/lang/String;

.field public lastRootActivity:Ljava/lang/String;

.field public launchCount:I

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/HtcAppUsageStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/HtcAppUsageStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/HtcAppUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    iput-object p4, p0, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
