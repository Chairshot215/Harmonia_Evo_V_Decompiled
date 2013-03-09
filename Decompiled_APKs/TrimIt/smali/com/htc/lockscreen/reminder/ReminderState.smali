.class public Lcom/htc/lockscreen/reminder/ReminderState;
.super Ljava/lang/Object;
.source "ReminderState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/reminder/ReminderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDescript:Ljava/lang/String;

.field public mId:J

.field public mIntent:Landroid/content/Intent;

.field public mIsActive:Z

.field public mNeedToDoInScreenOff:Z

.field public mWhere:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/reminder/ReminderState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    .line 9
    iput-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v3, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    .line 9
    iput-boolean v3, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    .line 10
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 26
    .local v0, withIntent:Z
    :goto_2
    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    .line 29
    :cond_0
    return-void

    .end local v0           #withIntent:Z
    :cond_1
    move v1, v3

    .line 20
    goto :goto_0

    :cond_2
    move v1, v3

    .line 21
    goto :goto_1

    :cond_3
    move v0, v3

    .line 25
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public done()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    .line 77
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public declared-synchronized update(Z)V
    .locals 1
    .parameter "isActive"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    .line 49
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(ZJLjava/lang/String;)V
    .locals 1
    .parameter "isActive"
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    .line 54
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    .line 55
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 56
    iput-wide p2, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 57
    iput-object p4, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 59
    :cond_0
    return-void
.end method

.method public update(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "isActive"
    .parameter "id"
    .parameter "descript"
    .parameter "where"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    .line 63
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    .line 64
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 65
    iput-wide p2, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 66
    iput-object p4, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-wide v3, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v0, v2

    .line 34
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
