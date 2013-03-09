.class public Lcom/htc/clientprofileservice/MyPhonebook;
.super Ljava/lang/Object;
.source "MyPhonebook.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BYTE_FALSE:B = 0x0t

.field private static final BYTE_TRUE:B = 0x1t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/clientprofileservice/MyPhonebook;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cmtUiSubscribed:Z

.field private nabProvisioningStatus:Z

.field private userInputData:Lcom/htc/clientprofileservice/UserInputData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/clientprofileservice/MyPhonebook$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/MyPhonebook$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/MyPhonebook;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    new-instance v0, Lcom/htc/clientprofileservice/UserInputData;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/UserInputData;-><init>()V

    iput-object v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/MyPhonebook;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/MyPhonebook;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    iget-boolean v0, p1, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    iget-boolean v0, p1, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    iput-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    new-instance v0, Lcom/htc/clientprofileservice/UserInputData;

    iget-object v1, p1, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    invoke-direct {v0, v1}, Lcom/htc/clientprofileservice/UserInputData;-><init>(Lcom/htc/clientprofileservice/UserInputData;)V

    iput-object v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserInputData()Lcom/htc/clientprofileservice/UserInputData;
    .locals 1

    iget-object v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    return-object v0
.end method

.method public isCmtUiSubscribed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    return v0
.end method

.method public isNabProvisioningStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    :goto_1
    const-class v0, Lcom/htc/clientprofileservice/UserInputData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/UserInputData;

    iput-object v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    goto :goto_1
.end method

.method public setCmtUiSubscribed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    return-void
.end method

.method public setNabProvisioningStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    return-void
.end method

.method public setUserInputData(Lcom/htc/clientprofileservice/UserInputData;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->nabProvisioningStatus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-boolean v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->cmtUiSubscribed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Lcom/htc/clientprofileservice/MyPhonebook;->userInputData:Lcom/htc/clientprofileservice/UserInputData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
