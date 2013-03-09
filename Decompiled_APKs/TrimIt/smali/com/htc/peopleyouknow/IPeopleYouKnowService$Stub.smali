.class public abstract Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;
.super Landroid/os/Binder;
.source "IPeopleYouKnowService.java"

# interfaces
.implements Lcom/htc/peopleyouknow/IPeopleYouKnowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/peopleyouknow/IPeopleYouKnowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.peopleyouknow.IPeopleYouKnowService"

.field static final TRANSACTION_IgnoreFriendRequest:I = 0x5

.field static final TRANSACTION_confirmFriendRequest:I = 0x4

.field static final TRANSACTION_getFriendRequest:I = 0x3

.field static final TRANSACTION_getFriendSuggestion:I = 0x1

.field static final TRANSACTION_requestFriend:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/peopleyouknow/IPeopleYouKnowService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/peopleyouknow/IPeopleYouKnowService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/peopleyouknow/IPeopleYouKnowService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v6, Lcom/htc/peopleyouknow/ContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/peopleyouknow/ContactData;

    .line 51
    .local v0, _arg0:[Lcom/htc/peopleyouknow/ContactData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, _arg1_length:I
    if-gez v3, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 58
    .local v2, _arg1:[I
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->getFriendSuggestion([Lcom/htc/peopleyouknow/ContactData;[I)[Lcom/htc/peopleyouknow/FriendSuggestion;

    move-result-object v4

    .line 59
    .local v4, _result:[Lcom/htc/peopleyouknow/FriendSuggestion;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 56
    .end local v2           #_arg1:[I
    .end local v4           #_result:[Lcom/htc/peopleyouknow/FriendSuggestion;
    :cond_0
    new-array v2, v3, [I

    .restart local v2       #_arg1:[I
    goto :goto_1

    .line 66
    .end local v0           #_arg0:[Lcom/htc/peopleyouknow/ContactData;
    .end local v2           #_arg1:[I
    .end local v3           #_arg1_length:I
    :sswitch_2
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->requestFriend(Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_3
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, _arg0_length:I
    if-gez v1, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 85
    .local v0, _arg0:[I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->getFriendRequest([I)[Lcom/htc/peopleyouknow/FriendRequest;

    move-result-object v4

    .line 86
    .local v4, _result:[Lcom/htc/peopleyouknow/FriendRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:[I
    .end local v4           #_result:[Lcom/htc/peopleyouknow/FriendRequest;
    :cond_1
    new-array v0, v1, [I

    .restart local v0       #_arg0:[I
    goto :goto_2

    .line 93
    .end local v0           #_arg0:[I
    .end local v1           #_arg0_length:I
    :sswitch_4
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->confirmFriendRequest(Ljava/lang/String;)I

    move-result v4

    .line 97
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_5
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->IgnoreFriendRequest(Ljava/lang/String;)I

    move-result v4

    .line 107
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
