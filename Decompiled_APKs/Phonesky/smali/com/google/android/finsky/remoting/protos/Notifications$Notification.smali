.class public final Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation


# instance fields
.field private appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

.field private appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private cachedSize:I

.field private docTitle_:Ljava/lang/String;

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private hasAppData:Z

.field private hasAppDeliveryData:Z

.field private hasDocTitle:Z

.field private hasDocid:Z

.field private hasInAppNotificationData:Z

.field private hasLibraryDirtyData:Z

.field private hasLibraryUpdate:Z

.field private hasNotificationId:Z

.field private hasNotificationType:Z

.field private hasPurchaseDeclinedData:Z

.field private hasPurchaseRemovalData:Z

.field private hasTimestamp:Z

.field private hasUserEmail:Z

.field private hasUserNotificationData:Z

.field private inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

.field private libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private notificationId_:Ljava/lang/String;

.field private notificationType_:I

.field private purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

.field private purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

.field private timestamp_:J

.field private userEmail_:Ljava/lang/String;

.field private userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 832
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 846
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationType_:I

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationId_:Ljava/lang/String;

    .line 880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->timestamp_:J

    .line 897
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docTitle_:Ljava/lang/String;

    .line 934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userEmail_:Ljava/lang/String;

    .line 951
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 971
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    .line 991
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 1011
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    .line 1031
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    .line 1051
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    .line 1071
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    .line 1091
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    .line 1191
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    .line 832
    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1359
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    return-object v0
.end method


# virtual methods
.method public getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    return-object v0
.end method

.method public getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    if-gez v0, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getSerializedSize()I

    .line 1198
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    return v0
.end method

.method public getDocTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    return-object v0
.end method

.method public getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    return-object v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationType_:I

    return v0
.end method

.method public getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    return-object v0
.end method

.method public getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1213
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1216
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1217
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1220
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1221
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1224
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1225
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1228
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1229
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1232
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1233
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1236
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1237
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1240
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1241
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1244
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1245
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1248
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1249
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1253
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1256
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1257
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_d
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    .line 1261
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 881
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->timestamp_:J

    return-wide v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    return-object v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData:Z

    return v0
.end method

.method public hasAppDeliveryData()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData:Z

    return v0
.end method

.method public hasDocTitle()Z
    .locals 1

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid:Z

    return v0
.end method

.method public hasInAppNotificationData()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData:Z

    return v0
.end method

.method public hasLibraryDirtyData()Z
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData:Z

    return v0
.end method

.method public hasLibraryUpdate()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate:Z

    return v0
.end method

.method public hasNotificationId()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId:Z

    return v0
.end method

.method public hasNotificationType()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType:Z

    return v0
.end method

.method public hasPurchaseDeclinedData()Z
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData:Z

    return v0
.end method

.method public hasPurchaseRemovalData()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp:Z

    return v0
.end method

.method public hasUserEmail()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail:Z

    return v0
.end method

.method public hasUserNotificationData()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1270
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1274
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    :sswitch_0
    return-object p0

    .line 1280
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setNotificationType(I)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1284
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setTimestamp(J)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1288
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 1289
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1290
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1294
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setDocTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1298
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setUserEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1302
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;-><init>()V

    .line 1303
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1304
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setAppData(Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1308
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 1309
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1310
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1314
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;-><init>()V

    .line 1315
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1316
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setPurchaseRemovalData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1320
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;-><init>()V

    .line 1321
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1322
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setUserNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1326
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;-><init>()V

    .line 1327
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1328
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setInAppNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1332
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;-><init>()V

    .line 1333
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1334
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setPurchaseDeclinedData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1338
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1342
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 1343
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1344
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1348
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;-><init>()V

    .line 1349
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1350
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setLibraryDirtyData(Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1270
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAppData(Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 978
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData:Z

    .line 979
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    .line 980
    return-object p0
.end method

.method public setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData:Z

    .line 999
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 1000
    return-object p0
.end method

.method public setDocTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle:Z

    .line 922
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docTitle_:Ljava/lang/String;

    .line 923
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 904
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid:Z

    .line 905
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 906
    return-object p0
.end method

.method public setInAppNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 1075
    if-nez p1, :cond_0

    .line 1076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1078
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData:Z

    .line 1079
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    .line 1080
    return-object p0
.end method

.method public setLibraryDirtyData(Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 1095
    if-nez p1, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1098
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData:Z

    .line 1099
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    .line 1100
    return-object p0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 955
    if-nez p1, :cond_0

    .line 956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 958
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate:Z

    .line 959
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 960
    return-object p0
.end method

.method public setNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId:Z

    .line 868
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationId_:Ljava/lang/String;

    .line 869
    return-object p0
.end method

.method public setNotificationType(I)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType:Z

    .line 851
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationType_:I

    .line 852
    return-object p0
.end method

.method public setPurchaseDeclinedData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 1035
    if-nez p1, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1038
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData:Z

    .line 1039
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    .line 1040
    return-object p0
.end method

.method public setPurchaseRemovalData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 1015
    if-nez p1, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1018
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData:Z

    .line 1019
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    .line 1020
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp:Z

    .line 885
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->timestamp_:J

    .line 886
    return-object p0
.end method

.method public setUserEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail:Z

    .line 939
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userEmail_:Ljava/lang/String;

    .line 940
    return-object p0
.end method

.method public setUserNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .locals 1
    .parameter "value"

    .prologue
    .line 1055
    if-nez p1, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1058
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData:Z

    .line 1059
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    .line 1060
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1156
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1159
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1160
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1162
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1163
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1165
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1166
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1168
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1169
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1171
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1172
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1174
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1175
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1177
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1178
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1180
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1181
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1183
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1184
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1186
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1187
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1189
    :cond_d
    return-void
.end method
