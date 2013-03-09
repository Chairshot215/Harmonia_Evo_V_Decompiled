.class public Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
.super Ljava/lang/Object;
.source "EASMoveItems.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public moveItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    .line 91
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMoveItems$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 72
    return-void
.end method
