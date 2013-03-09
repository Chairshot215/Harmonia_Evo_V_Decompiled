.class final Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
.super Ljava/lang/Object;
.source "VCardSaveIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardSaveIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VCardSavedInfo"
.end annotation


# instance fields
.field bSaved:Z

.field iMsgId:J

.field mBody:[B

.field parsed:Z

.field final synthetic this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

.field vCardStruct:Lcom/android/vcard/VCardEntry;


# direct methods
.method constructor <init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "save"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->setValue(JZLjava/lang/String;)V

    .line 496
    return-void
.end method

.method constructor <init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "save"
    .parameter "body"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->setValue(JZLjava/lang/String;)V

    .line 500
    return-void
.end method

.method private setValue(JZLjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "save"
    .parameter "body"

    .prologue
    const/4 v1, 0x0

    .line 503
    iput-wide p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    .line 504
    iput-boolean p3, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    .line 505
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    .line 509
    :goto_0
    iput-object v1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->vCardStruct:Lcom/android/vcard/VCardEntry;

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->parsed:Z

    .line 511
    return-void

    .line 508
    :cond_0
    iput-object v1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    goto :goto_0
.end method
