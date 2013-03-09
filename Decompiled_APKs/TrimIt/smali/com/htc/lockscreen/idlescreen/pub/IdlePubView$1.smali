.class final Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;
.super Ljava/lang/Object;
.source "IdlePubView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
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
        "Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 179
    new-instance v0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-direct {v0, p1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    .locals 1
    .parameter "size"

    .prologue
    .line 183
    new-array v0, p1, [Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView$1;->newArray(I)[Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    move-result-object v0

    return-object v0
.end method
