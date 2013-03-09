.class Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;
.super Ljava/lang/Object;
.source "VCardSaveIndicatorCache.java"

# interfaces
.implements Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardSaveIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardParseCompleteListener"
.end annotation


# instance fields
.field private mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

.field final synthetic this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/VCardSaveIndicatorCache;)V
    .locals 1
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 520
    return-void
.end method


# virtual methods
.method public onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
    .locals 4
    .parameter "bSuccess"
    .parameter "struct"

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->parsed:Z

    .line 528
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iput-object v3, v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    .line 530
    if-eqz p1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iput-object p2, v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->vCardStruct:Lcom/android/vcard/VCardEntry;

    .line 538
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    #calls: Lcom/android/mms/util/VCardSaveIndicatorCache;->getNextVcardParseData()Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    invoke-static {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->access$200(Lcom/android/mms/util/VCardSaveIndicatorCache;)Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 539
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iget-object v0, v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    #getter for: Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->access$300(Lcom/android/mms/util/VCardSaveIndicatorCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->access$400()Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iget-object v2, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/VCardUtils;->binaryVCardToStructure(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    .line 544
    :goto_1
    return-void

    .line 533
    :cond_1
    const-string v0, "VCardSaveIndicatorCache"

    const-string v1, "parse vcard fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->this$0:Lcom/android/mms/util/VCardSaveIndicatorCache;

    #calls: Lcom/android/mms/util/VCardSaveIndicatorCache;->notifyOvserverInBackground()V
    invoke-static {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->access$500(Lcom/android/mms/util/VCardSaveIndicatorCache;)V

    goto :goto_1
.end method

.method public setVCardData(Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 523
    return-void
.end method
