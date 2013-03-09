.class final Landroid/net/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
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
        "Landroid/net/NetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, v4, v6, v8, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v5}, Landroid/net/NetworkInfo$State;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v9

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v2}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v9, "NetworkInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Incorrect value - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    #getter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v3}, Landroid/net/NetworkInfo;->access$000(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$State;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v12

    aget v9, v9, v12

    packed-switch v9, :pswitch_data_0

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v9, v10

    :goto_3
    #setter for: Landroid/net/NetworkInfo;->mIsFailover:Z
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$302(Landroid/net/NetworkInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    :goto_4
    #setter for: Landroid/net/NetworkInfo;->mIsAvailable:Z
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$402(Landroid/net/NetworkInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v9, v10

    :goto_5
    #setter for: Landroid/net/NetworkInfo;->mIsRoaming:Z
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$502(Landroid/net/NetworkInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    #setter for: Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$602(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    #setter for: Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$702(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v9, v10

    :goto_6
    #setter for: Landroid/net/NetworkInfo;->mIsIpV4Connected:Z
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$802(Landroid/net/NetworkInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    :goto_7
    #setter for: Landroid/net/NetworkInfo;->mIsIpV6Connected:Z
    invoke-static {v3, v10}, Landroid/net/NetworkInfo;->access$902(Landroid/net/NetworkInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    #setter for: Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$1002(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v3

    :pswitch_0
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    :pswitch_1
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    :pswitch_2
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    :pswitch_3
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    :pswitch_4
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Landroid/net/NetworkInfo;->access$200()Ljava/util/EnumMap;

    move-result-object v9

    #getter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3}, Landroid/net/NetworkInfo;->access$100(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo$State;

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    goto :goto_2

    :cond_3
    sget-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v9}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_2

    :cond_4
    move v9, v11

    goto :goto_3

    :cond_5
    move v9, v11

    goto :goto_4

    :cond_6
    move v9, v11

    goto :goto_5

    :cond_7
    move v9, v11

    goto :goto_6

    :cond_8
    move v10, v11

    goto :goto_7

    :catch_0
    move-exception v9

    goto/16 :goto_1

    :catch_1
    move-exception v9

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->newArray(I)[Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method
