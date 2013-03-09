.class Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field mAccountId:J

.field mAvatar:Landroid/graphics/Bitmap;

.field mMessage:Ljava/lang/String;

.field mNickname:Ljava/lang/String;

.field mNotificationIntent:Landroid/content/Intent;

.field mTitle:Ljava/lang/String;

.field mUnreadCount:I

.field mUsername:Ljava/lang/String;

.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;J)V
    .locals 1
    .parameter
    .parameter "username"
    .parameter "nickName"
    .parameter "title"
    .parameter "message"
    .parameter "intent"
    .parameter "accountId"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->this$1:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUsername:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mNickname:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mTitle:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mMessage:Ljava/lang/String;

    .line 101
    iput-object p6, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mNotificationIntent:Landroid/content/Intent;

    .line 102
    iput-wide p7, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAccountId:J

    .line 103
    iget-object v0, p1, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->this$0:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-virtual {v0, p2, p7, p8}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getAvatarForContact(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAvatar:Landroid/graphics/Bitmap;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    .line 105
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    .line 124
    instance-of v0, p1, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUsername:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    .end local p1
    iget-object v1, p1, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .parameter "username"
    .parameter "nickName"
    .parameter "title"
    .parameter "message"
    .parameter "intent"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->this$1:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->this$0:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAccountId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getAvatarForContact(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAvatar:Landroid/graphics/Bitmap;

    .line 113
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUsername:Ljava/lang/String;

    .line 115
    :cond_0
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mNickname:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mTitle:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mMessage:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mNotificationIntent:Landroid/content/Intent;

    .line 119
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    .line 120
    return-void
.end method
