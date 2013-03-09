.class Lcom/android/browser/Tab$VoiceSearchData;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceSearchData"
.end annotation


# static fields
.field public static SOURCE_IS_GOOGLE:Ljava/lang/String;


# instance fields
.field public mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public mLastVoiceSearchTitle:Ljava/lang/String;

.field public mLastVoiceSearchUrl:Ljava/lang/String;

.field public mSourceIsGoogle:Z

.field public mVoiceSearchBaseUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVoiceSearchHtmls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVoiceSearchIntent:Landroid/content/Intent;

.field public mVoiceSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVoiceSearchUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    const-string v0, "android.speech.extras.SOURCE_IS_GOOGLE"

    sput-object v0, Lcom/android/browser/Tab$VoiceSearchData;->SOURCE_IS_GOOGLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    .line 426
    iput-object p2, p0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchUrls:Ljava/util/ArrayList;

    .line 427
    iput-object p3, p0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    .line 428
    iput-object p4, p0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    .line 429
    return-void
.end method
