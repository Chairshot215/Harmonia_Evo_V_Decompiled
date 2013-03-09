.class public Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;
.super Lcom/android/vcard/VCardEntryCommitter;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryParseCommitter"
.end annotation


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    const-string v0, "EntryParseCommitter"

    sput-object v0, Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;)V
    .locals 0
    .parameter "resolver"
    .parameter "listener"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 340
    iput-object p2, p0, Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    .line 341
    return-void
.end method


# virtual methods
.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 2
    .parameter "vcardEntry"

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/android/vcard/VCardEntryCommitter;->onEntryCreated(Lcom/android/vcard/VCardEntry;)V

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onParsingEnd()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onParsingStart()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method
