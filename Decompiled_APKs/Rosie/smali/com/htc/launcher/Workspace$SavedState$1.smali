.class final Lcom/htc/launcher/Workspace$SavedState$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/launcher/Workspace$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3504
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/launcher/Workspace$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 3507
    new-instance v0, Lcom/htc/launcher/Workspace$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/launcher/Workspace$SavedState;-><init>(Landroid/os/Parcel;Lcom/htc/launcher/Workspace$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3504
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/launcher/Workspace$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/launcher/Workspace$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 3512
    new-array v0, p1, [Lcom/htc/launcher/Workspace$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3504
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace$SavedState$1;->newArray(I)[Lcom/htc/launcher/Workspace$SavedState;

    move-result-object v0

    return-object v0
.end method
