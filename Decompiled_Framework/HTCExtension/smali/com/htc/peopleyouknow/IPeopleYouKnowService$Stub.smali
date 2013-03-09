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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/peopleyouknow/IPeopleYouKnowService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/peopleyouknow/IPeopleYouKnowService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/peopleyouknow/IPeopleYouKnowService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/htc/peopleyouknow/ContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/peopleyouknow/ContactData;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->getFriendSuggestion([Lcom/htc/peopleyouknow/ContactData;[I)[Lcom/htc/peopleyouknow/FriendSuggestion;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :cond_0
    new-array v2, v3, [I

    goto :goto_1

    :sswitch_2
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->requestFriend(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->getFriendRequest([I)[Lcom/htc/peopleyouknow/FriendRequest;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    goto :goto_2

    :sswitch_4
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->confirmFriendRequest(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v6, "com.htc.peopleyouknow.IPeopleYouKnowService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;->IgnoreFriendRequest(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
