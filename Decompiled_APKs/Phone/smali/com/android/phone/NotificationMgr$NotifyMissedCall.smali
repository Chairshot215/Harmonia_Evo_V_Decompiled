.class public Lcom/android/phone/NotificationMgr$NotifyMissedCall;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyMissedCall"
.end annotation


# instance fields
.field mCityId:Ljava/lang/String;

.field mContactId:J

.field mDate:J

.field mLabel:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mNumber:Ljava/lang/String;

.field mPhoto:Landroid/graphics/Bitmap;

.field mPhotoId:J

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
