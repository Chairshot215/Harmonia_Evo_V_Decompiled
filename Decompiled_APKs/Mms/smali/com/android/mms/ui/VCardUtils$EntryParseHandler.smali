.class public Lcom/android/mms/ui/VCardUtils$EntryParseHandler;
.super Ljava/lang/Object;
.source "VCardUtils.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryParseHandler"
.end annotation


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const-string v0, "EntryParseHandler"

    sput-object v0, Lcom/android/mms/ui/VCardUtils$EntryParseHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/android/mms/ui/VCardUtils$EntryParseHandler;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    .line 317
    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 2
    .parameter "vcardEntry"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$EntryParseHandler;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$EntryParseHandler;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V

    .line 331
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method
