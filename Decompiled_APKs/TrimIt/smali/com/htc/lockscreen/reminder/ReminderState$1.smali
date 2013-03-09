.class final Lcom/htc/lockscreen/reminder/ReminderState$1;
.super Ljava/lang/Object;
.source "ReminderState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/reminder/ReminderState;
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
        "Lcom/htc/lockscreen/reminder/ReminderState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/lockscreen/reminder/ReminderState;
    .locals 1
    .parameter "in"

    .prologue
    .line 87
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0, p1}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/reminder/ReminderState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/lockscreen/reminder/ReminderState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/lockscreen/reminder/ReminderState;
    .locals 1
    .parameter "size"

    .prologue
    .line 91
    new-array v0, p1, [Lcom/htc/lockscreen/reminder/ReminderState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/reminder/ReminderState$1;->newArray(I)[Lcom/htc/lockscreen/reminder/ReminderState;

    move-result-object v0

    return-object v0
.end method
